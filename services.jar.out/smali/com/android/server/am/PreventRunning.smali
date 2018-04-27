.class public Lcom/android/server/am/PreventRunning;
.super Ljava/lang/Object;
.source "PreventRunning.java"

# interfaces
.implements Lcom/android/server/am/PreventRunningHook;


# static fields
.field private static APKS:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "Prevent"

.field public static final VERSION:I = 0x133a200


# instance fields
.field private mPreventRunning:Lcom/android/server/am/PreventRunningHook;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 26
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    .line 27
    const-string/jumbo v1, "/system/app/Brevent/Brevent.apk"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 28
    const-string/jumbo v1, "/data/app/me.piebridge.prevent-1/base.apk"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 29
    const-string/jumbo v1, "/data/app/me.piebridge.prevent-2/base.apk"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 30
    const-string/jumbo v1, "/data/app/me.piebridge.prevent-3/base.apk"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 31
    const-string/jumbo v1, "/data/app/me.piebridge.prevent-1.apk"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 32
    const-string/jumbo v1, "/data/app/me.piebridge.prevent-2.apk"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 33
    const-string/jumbo v1, "/data/app/me.piebridge.prevent-3.apk"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 26
    sput-object v0, Lcom/android/server/am/PreventRunning;->APKS:[Ljava/lang/String;

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    sget-object v3, Lcom/android/server/am/PreventRunning;->APKS:[Ljava/lang/String;

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 38
    .local v0, "apk":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 39
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-direct {p0, v1}, Lcom/android/server/am/PreventRunning;->initPreventRunning(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 43
    .end local v0    # "apk":Ljava/lang/String;
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    return-void

    .line 37
    .restart local v0    # "apk":Ljava/lang/String;
    .restart local v1    # "file":Ljava/io/File;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private initPreventRunning(Ljava/io/File;)Z
    .locals 9
    .param p1, "apk"    # Ljava/io/File;

    .prologue
    .line 47
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 48
    .local v1, "currentClassLoader":Ljava/lang/ClassLoader;
    new-instance v0, Ldalvik/system/DexClassLoader;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "/cache"

    const/4 v8, 0x0

    invoke-direct {v0, v6, v7, v8, v1}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 49
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    const-string/jumbo v6, "Prevent"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "loading PreventRunning(20161024) from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    const-string/jumbo v6, "me.piebridge.prevent.framework.PreventRunning"

    invoke-virtual {v0, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/PreventRunningHook;

    iput-object v6, p0, Lcom/android/server/am/PreventRunning;->mPreventRunning:Lcom/android/server/am/PreventRunningHook;

    .line 51
    const v6, 0x133a200

    invoke-virtual {p0, v6}, Lcom/android/server/am/PreventRunning;->setVersion(I)V

    .line 52
    const-string/jumbo v6, "native"

    invoke-virtual {p0, v6}, Lcom/android/server/am/PreventRunning;->setMethod(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    const/4 v6, 0x1

    return v6

    .line 60
    .end local v0    # "classLoader":Ljava/lang/ClassLoader;
    .end local v1    # "currentClassLoader":Ljava/lang/ClassLoader;
    :catch_0
    move-exception v5

    .line 61
    .local v5, "t":Ljava/lang/Throwable;
    const-string/jumbo v6, "Prevent"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "cannot load PreventRunning from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    .end local v5    # "t":Ljava/lang/Throwable;
    :goto_0
    const/4 v6, 0x0

    return v6

    .line 58
    :catch_1
    move-exception v3

    .line 59
    .local v3, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v6, "Prevent"

    const-string/jumbo v7, "cannot access class"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 56
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v4

    .line 57
    .local v4, "e":Ljava/lang/InstantiationException;
    const-string/jumbo v6, "Prevent"

    const-string/jumbo v7, "cannot instance class"

    invoke-static {v6, v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 54
    .end local v4    # "e":Ljava/lang/InstantiationException;
    :catch_3
    move-exception v2

    .line 55
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v6, "Prevent"

    const-string/jumbo v7, "cannot find class"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public hookBindService(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "service"    # Landroid/content/Intent;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/server/am/PreventRunning;->mPreventRunning:Lcom/android/server/am/PreventRunningHook;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/PreventRunning;->mPreventRunning:Lcom/android/server/am/PreventRunningHook;

    invoke-interface {v0, p1}, Lcom/android/server/am/PreventRunningHook;->hookBindService(Landroid/content/Intent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hookStartProcessLocked(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "hostingType"    # Ljava/lang/String;
    .param p4, "hostingName"    # Landroid/content/ComponentName;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/server/am/PreventRunning;->mPreventRunning:Lcom/android/server/am/PreventRunningHook;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/PreventRunning;->mPreventRunning:Lcom/android/server/am/PreventRunningHook;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/server/am/PreventRunningHook;->hookStartProcessLocked(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Landroid/content/ComponentName;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hookStartService(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "service"    # Landroid/content/Intent;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/server/am/PreventRunning;->mPreventRunning:Lcom/android/server/am/PreventRunningHook;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/PreventRunning;->mPreventRunning:Lcom/android/server/am/PreventRunningHook;

    invoke-interface {v0, p1}, Lcom/android/server/am/PreventRunningHook;->hookStartService(Landroid/content/Intent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isActiviated()Z
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/server/am/PreventRunning;->mPreventRunning:Lcom/android/server/am/PreventRunningHook;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExcludingStopped(Ljava/lang/String;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/server/am/PreventRunning;->mPreventRunning:Lcom/android/server/am/PreventRunningHook;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/PreventRunning;->mPreventRunning:Lcom/android/server/am/PreventRunningHook;

    invoke-interface {v0, p1}, Lcom/android/server/am/PreventRunningHook;->isExcludingStopped(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public match(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;)I
    .locals 8
    .param p1, "match"    # I
    .param p2, "filter"    # Ljava/lang/Object;
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "type"    # Ljava/lang/String;
    .param p5, "scheme"    # Ljava/lang/String;
    .param p6, "data"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 148
    .local p7, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/am/PreventRunning;->mPreventRunning:Lcom/android/server/am/PreventRunningHook;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/server/am/PreventRunning;->mPreventRunning:Lcom/android/server/am/PreventRunningHook;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/android/server/am/PreventRunningHook;->match(ILjava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;)I

    move-result v0

    return v0

    .line 151
    :cond_0
    return p1
.end method

.method public onAppDied(Ljava/lang/Object;)V
    .locals 1
    .param p1, "processRecord"    # Ljava/lang/Object;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/server/am/PreventRunning;->mPreventRunning:Lcom/android/server/am/PreventRunningHook;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/android/server/am/PreventRunning;->mPreventRunning:Lcom/android/server/am/PreventRunningHook;

    invoke-interface {v0, p1}, Lcom/android/server/am/PreventRunningHook;->onAppDied(Ljava/lang/Object;)V

    .line 106
    :cond_0
    return-void
.end method

.method public onBroadcastIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/am/PreventRunning;->mPreventRunning:Lcom/android/server/am/PreventRunningHook;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/android/server/am/PreventRunning;->mPreventRunning:Lcom/android/server/am/PreventRunningHook;

    invoke-interface {v0, p1}, Lcom/android/server/am/PreventRunningHook;->onBroadcastIntent(Landroid/content/Intent;)V

    .line 78
    :cond_0
    return-void
.end method

.method public onCleanUpRemovedTask(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/server/am/PreventRunning;->mPreventRunning:Lcom/android/server/am/PreventRunningHook;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/server/am/PreventRunning;->mPreventRunning:Lcom/android/server/am/PreventRunningHook;

    invoke-interface {v0, p1}, Lcom/android/server/am/PreventRunningHook;->onCleanUpRemovedTask(Ljava/lang/String;)V

    .line 85
    :cond_0
    return-void
.end method

.method public onDestroyActivity(Ljava/lang/Object;)V
    .locals 1
    .param p1, "activityRecord"    # Ljava/lang/Object;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/server/am/PreventRunning;->mPreventRunning:Lcom/android/server/am/PreventRunningHook;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/server/am/PreventRunning;->mPreventRunning:Lcom/android/server/am/PreventRunningHook;

    invoke-interface {v0, p1}, Lcom/android/server/am/PreventRunningHook;->onDestroyActivity(Ljava/lang/Object;)V

    .line 134
    :cond_0
    return-void
.end method

.method public onLaunchActivity(Ljava/lang/Object;)V
    .locals 1
    .param p1, "activityRecord"    # Ljava/lang/Object;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/server/am/PreventRunning;->mPreventRunning:Lcom/android/server/am/PreventRunningHook;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/server/am/PreventRunning;->mPreventRunning:Lcom/android/server/am/PreventRunningHook;

    invoke-interface {v0, p1}, Lcom/android/server/am/PreventRunningHook;->onLaunchActivity(Ljava/lang/Object;)V

    .line 113
    :cond_0
    return-void
.end method

.method public onMoveActivityTaskToBack(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/am/PreventRunning;->mPreventRunning:Lcom/android/server/am/PreventRunningHook;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/server/am/PreventRunning;->mPreventRunning:Lcom/android/server/am/PreventRunningHook;

    invoke-interface {v0, p1}, Lcom/android/server/am/PreventRunningHook;->onMoveActivityTaskToBack(Ljava/lang/String;)V

    .line 99
    :cond_0
    return-void
.end method

.method public onResumeActivity(Ljava/lang/Object;)V
    .locals 1
    .param p1, "activityRecord"    # Ljava/lang/Object;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/server/am/PreventRunning;->mPreventRunning:Lcom/android/server/am/PreventRunningHook;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/android/server/am/PreventRunning;->mPreventRunning:Lcom/android/server/am/PreventRunningHook;

    invoke-interface {v0, p1}, Lcom/android/server/am/PreventRunningHook;->onResumeActivity(Ljava/lang/Object;)V

    .line 120
    :cond_0
    return-void
.end method

.method public onStartHomeActivity(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/server/am/PreventRunning;->mPreventRunning:Lcom/android/server/am/PreventRunningHook;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/server/am/PreventRunning;->mPreventRunning:Lcom/android/server/am/PreventRunningHook;

    invoke-interface {v0, p1}, Lcom/android/server/am/PreventRunningHook;->onStartHomeActivity(Ljava/lang/String;)V

    .line 92
    :cond_0
    return-void
.end method

.method public onUserLeavingActivity(Ljava/lang/Object;)V
    .locals 1
    .param p1, "activityRecord"    # Ljava/lang/Object;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/server/am/PreventRunning;->mPreventRunning:Lcom/android/server/am/PreventRunningHook;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/server/am/PreventRunning;->mPreventRunning:Lcom/android/server/am/PreventRunningHook;

    invoke-interface {v0, p1}, Lcom/android/server/am/PreventRunningHook;->onUserLeavingActivity(Ljava/lang/Object;)V

    .line 127
    :cond_0
    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 1
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/server/am/PreventRunning;->mPreventRunning:Lcom/android/server/am/PreventRunningHook;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/android/server/am/PreventRunning;->mPreventRunning:Lcom/android/server/am/PreventRunningHook;

    invoke-interface {v0, p1}, Lcom/android/server/am/PreventRunningHook;->setMethod(Ljava/lang/String;)V

    .line 167
    :cond_0
    return-void
.end method

.method public setSender(Ljava/lang/String;)V
    .locals 1
    .param p1, "sender"    # Ljava/lang/String;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/server/am/PreventRunning;->mPreventRunning:Lcom/android/server/am/PreventRunningHook;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/server/am/PreventRunning;->mPreventRunning:Lcom/android/server/am/PreventRunningHook;

    invoke-interface {v0, p1}, Lcom/android/server/am/PreventRunningHook;->setSender(Ljava/lang/String;)V

    .line 71
    :cond_0
    return-void
.end method

.method public setVersion(I)V
    .locals 1
    .param p1, "version"    # I

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/server/am/PreventRunning;->mPreventRunning:Lcom/android/server/am/PreventRunningHook;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/android/server/am/PreventRunning;->mPreventRunning:Lcom/android/server/am/PreventRunningHook;

    invoke-interface {v0, p1}, Lcom/android/server/am/PreventRunningHook;->setVersion(I)V

    .line 160
    :cond_0
    return-void
.end method
