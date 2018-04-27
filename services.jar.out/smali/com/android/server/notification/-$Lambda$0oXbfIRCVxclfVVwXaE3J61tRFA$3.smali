.class final synthetic Lcom/android/server/notification/-$Lambda$0oXbfIRCVxclfVVwXaE3J61tRFA$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/server/notification/NotificationManagerService$FlagChecker;


# instance fields
.field private final synthetic -$f0:I

.field private final synthetic -$f1:I


# direct methods
.method private final synthetic $m$0(I)Z
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    iget v0, p0, Lcom/android/server/notification/-$Lambda$0oXbfIRCVxclfVVwXaE3J61tRFA$3;->-$f0:I

    iget v1, p0, Lcom/android/server/notification/-$Lambda$0oXbfIRCVxclfVVwXaE3J61tRFA$3;->-$f1:I

    invoke-static {v0, v1, p1}, Lcom/android/server/notification/NotificationManagerService$16;->lambda$-com_android_server_notification_NotificationManagerService$16_216953(III)Z

    move-result v0

    return v0
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/notification/-$Lambda$0oXbfIRCVxclfVVwXaE3J61tRFA$3;->-$f0:I

    iput p2, p0, Lcom/android/server/notification/-$Lambda$0oXbfIRCVxclfVVwXaE3J61tRFA$3;->-$f1:I

    return-void
.end method


# virtual methods
.method public final apply(I)Z
    .locals 1

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/notification/-$Lambda$0oXbfIRCVxclfVVwXaE3J61tRFA$3;->$m$0(I)Z

    move-result v0

    return v0
.end method
