.class public Lcom/android/server/am/PreventRunningUtils;
.super Ljava/lang/Object;
.source "PreventRunningUtils.java"


# static fields
.field private static ams:Lcom/android/server/am/ActivityManagerService;

.field private static mPreventRunning:Lcom/android/server/am/PreventRunning;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/android/server/am/PreventRunning;

    invoke-direct {v0}, Lcom/android/server/am/PreventRunning;-><init>()V

    sput-object v0, Lcom/android/server/am/PreventRunningUtils;->mPreventRunning:Lcom/android/server/am/PreventRunning;

    .line 17
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static clearSender()V
    .locals 2

    .prologue
    .line 90
    sget-object v0, Lcom/android/server/am/PreventRunningUtils;->mPreventRunning:Lcom/android/server/am/PreventRunning;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/am/PreventRunning;->setSender(Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method private static forToken(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;
    .locals 1
    .param p0, "token"    # Landroid/os/IBinder;

    .prologue
    .line 124
    invoke-static {p0}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method private static getAms()Lcom/android/server/am/ActivityManagerService;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/android/server/am/PreventRunningUtils;->ams:Lcom/android/server/am/ActivityManagerService;

    if-nez v0, :cond_0

    .line 28
    const-string/jumbo v0, "activity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityManagerService;

    sput-object v0, Lcom/android/server/am/PreventRunningUtils;->ams:Lcom/android/server/am/ActivityManagerService;

    .line 30
    :cond_0
    sget-object v0, Lcom/android/server/am/PreventRunningUtils;->ams:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method public static hookBindService(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;)Z
    .locals 1
    .param p0, "caller"    # Landroid/app/IApplicationThread;
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "service"    # Landroid/content/Intent;

    .prologue
    .line 98
    sget-object v0, Lcom/android/server/am/PreventRunningUtils;->mPreventRunning:Lcom/android/server/am/PreventRunning;

    invoke-virtual {v0, p2}, Lcom/android/server/am/PreventRunning;->hookBindService(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public static hookStartProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILjava/lang/String;Landroid/content/ComponentName;)Z
    .locals 2
    .param p0, "processName"    # Ljava/lang/String;
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "knownToBeDead"    # Z
    .param p3, "intentFlags"    # I
    .param p4, "hostingType"    # Ljava/lang/String;
    .param p5, "hostingName"    # Landroid/content/ComponentName;

    .prologue
    .line 48
    sget-object v0, Lcom/android/server/am/PreventRunningUtils;->mPreventRunning:Lcom/android/server/am/PreventRunning;

    invoke-static {}, Lcom/android/server/am/PreventRunningUtils;->getAms()Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p4, p5}, Lcom/android/server/am/PreventRunning;->hookStartProcessLocked(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public static hookStartService(Landroid/app/IApplicationThread;Landroid/content/Intent;)Z
    .locals 1
    .param p0, "caller"    # Landroid/app/IApplicationThread;
    .param p1, "service"    # Landroid/content/Intent;

    .prologue
    .line 94
    sget-object v0, Lcom/android/server/am/PreventRunningUtils;->mPreventRunning:Lcom/android/server/am/PreventRunning;

    invoke-virtual {v0, p1}, Lcom/android/server/am/PreventRunning;->hookStartService(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public static isExcludingStopped(Landroid/content/Intent;)Z
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 34
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Intent;->isExcludingStopped()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/server/am/PreventRunningUtils;->mPreventRunning:Lcom/android/server/am/PreventRunning;

    invoke-virtual {v1, v0}, Lcom/android/server/am/PreventRunning;->isExcludingStopped(Ljava/lang/String;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static match(Landroid/content/IntentFilter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I
    .locals 8
    .param p0, "filter"    # Landroid/content/IntentFilter;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "scheme"    # Ljava/lang/String;
    .param p4, "data"    # Landroid/net/Uri;
    .param p6, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/IntentFilter;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 39
    .local p5, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p6}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I

    move-result v1

    .line 40
    .local v1, "match":I
    if-ltz v1, :cond_0

    .line 41
    sget-object v0, Lcom/android/server/am/PreventRunningUtils;->mPreventRunning:Lcom/android/server/am/PreventRunning;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/PreventRunning;->match(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;)I

    move-result v0

    return v0

    .line 43
    :cond_0
    return v1
.end method

.method public static onAppDied(Lcom/android/server/am/ProcessRecord;)V
    .locals 1
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 62
    sget-object v0, Lcom/android/server/am/PreventRunningUtils;->mPreventRunning:Lcom/android/server/am/PreventRunning;

    invoke-virtual {v0, p0}, Lcom/android/server/am/PreventRunning;->onAppDied(Ljava/lang/Object;)V

    .line 63
    return-void
.end method

.method public static onBroadcastIntent(Landroid/content/Intent;)V
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 102
    sget-object v0, Lcom/android/server/am/PreventRunningUtils;->mPreventRunning:Lcom/android/server/am/PreventRunning;

    invoke-virtual {v0, p0}, Lcom/android/server/am/PreventRunning;->onBroadcastIntent(Landroid/content/Intent;)V

    .line 103
    return-void
.end method

.method public static onCleanUpRemovedTask(Landroid/content/Intent;)V
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 74
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    sget-object v0, Lcom/android/server/am/PreventRunningUtils;->mPreventRunning:Lcom/android/server/am/PreventRunning;

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/PreventRunning;->onCleanUpRemovedTask(Ljava/lang/String;)V

    .line 77
    :cond_0
    return-void
.end method

.method public static onDestroyActivity(Landroid/os/IBinder;)V
    .locals 2
    .param p0, "token"    # Landroid/os/IBinder;

    .prologue
    .line 116
    sget-object v0, Lcom/android/server/am/PreventRunningUtils;->mPreventRunning:Lcom/android/server/am/PreventRunning;

    invoke-static {p0}, Lcom/android/server/am/PreventRunningUtils;->forToken(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/PreventRunning;->onDestroyActivity(Ljava/lang/Object;)V

    .line 117
    return-void
.end method

.method public static onLaunchActivity(Landroid/os/IBinder;)V
    .locals 2
    .param p0, "token"    # Landroid/os/IBinder;

    .prologue
    .line 120
    sget-object v0, Lcom/android/server/am/PreventRunningUtils;->mPreventRunning:Lcom/android/server/am/PreventRunning;

    invoke-static {p0}, Lcom/android/server/am/PreventRunningUtils;->forToken(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/PreventRunning;->onLaunchActivity(Ljava/lang/Object;)V

    .line 121
    return-void
.end method

.method public static onMoveActivityTaskToBack(Landroid/os/IBinder;)V
    .locals 3
    .param p0, "token"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-static {p0}, Lcom/android/server/am/PreventRunningUtils;->forToken(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 81
    .local v0, "ar":Lcom/android/server/am/ActivityRecord;
    sget-object v2, Lcom/android/server/am/PreventRunningUtils;->mPreventRunning:Lcom/android/server/am/PreventRunning;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    :cond_0
    invoke-virtual {v2, v1}, Lcom/android/server/am/PreventRunning;->onMoveActivityTaskToBack(Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public static onResumeActivity(Landroid/os/IBinder;)V
    .locals 2
    .param p0, "token"    # Landroid/os/IBinder;

    .prologue
    .line 112
    sget-object v0, Lcom/android/server/am/PreventRunningUtils;->mPreventRunning:Lcom/android/server/am/PreventRunning;

    invoke-static {p0}, Lcom/android/server/am/PreventRunningUtils;->forToken(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/PreventRunning;->onResumeActivity(Ljava/lang/Object;)V

    .line 113
    return-void
.end method

.method public static onStartActivity(ILandroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;)I
    .locals 3
    .param p0, "res"    # I
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 52
    if-ltz p0, :cond_1

    if-eqz p3, :cond_1

    const-string/jumbo v1, "android.intent.category.HOME"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "android.intent.category.LAUNCHER"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 53
    :cond_0
    invoke-static {}, Lcom/android/server/am/PreventRunningUtils;->getAms()Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .line 54
    .local v0, "callerApp":Lcom/android/server/am/ProcessRecord;
    if-eqz v0, :cond_1

    .line 55
    sget-object v1, Lcom/android/server/am/PreventRunningUtils;->mPreventRunning:Lcom/android/server/am/PreventRunning;

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/am/PreventRunning;->onStartHomeActivity(Ljava/lang/String;)V

    .line 58
    .end local v0    # "callerApp":Lcom/android/server/am/ProcessRecord;
    :cond_1
    return p0
.end method

.method public static onUserLeavingActivity(Landroid/os/IBinder;ZZ)V
    .locals 2
    .param p0, "token"    # Landroid/os/IBinder;
    .param p1, "finishing"    # Z
    .param p2, "userLeaving"    # Z

    .prologue
    .line 106
    if-eqz p2, :cond_0

    .line 107
    sget-object v0, Lcom/android/server/am/PreventRunningUtils;->mPreventRunning:Lcom/android/server/am/PreventRunning;

    invoke-static {p0}, Lcom/android/server/am/PreventRunningUtils;->forToken(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/PreventRunning;->onUserLeavingActivity(Ljava/lang/Object;)V

    .line 109
    :cond_0
    return-void
.end method

.method public static returnFalse(Z)Z
    .locals 1
    .param p0, "res"    # Z

    .prologue
    .line 66
    sget-object v0, Lcom/android/server/am/PreventRunningUtils;->mPreventRunning:Lcom/android/server/am/PreventRunning;

    invoke-virtual {v0}, Lcom/android/server/am/PreventRunning;->isActiviated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    const/4 v0, 0x0

    return v0

    .line 69
    :cond_0
    return p0
.end method

.method public static setSender(Landroid/app/IApplicationThread;)V
    .locals 3
    .param p0, "caller"    # Landroid/app/IApplicationThread;

    .prologue
    .line 85
    invoke-static {}, Lcom/android/server/am/PreventRunningUtils;->getAms()Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .line 86
    .local v0, "callerApp":Lcom/android/server/am/ProcessRecord;
    sget-object v2, Lcom/android/server/am/PreventRunningUtils;->mPreventRunning:Lcom/android/server/am/PreventRunning;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :goto_0
    invoke-virtual {v2, v1}, Lcom/android/server/am/PreventRunning;->setSender(Ljava/lang/String;)V

    .line 87
    return-void

    .line 86
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
