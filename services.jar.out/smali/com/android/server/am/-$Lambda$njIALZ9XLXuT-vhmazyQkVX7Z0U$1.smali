.class final synthetic Lcom/android/server/am/-$Lambda$njIALZ9XLXuT-vhmazyQkVX7Z0U$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;

.field private final synthetic -$f2:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/server/am/-$Lambda$njIALZ9XLXuT-vhmazyQkVX7Z0U$1;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/-$Lambda$njIALZ9XLXuT-vhmazyQkVX7Z0U$1;->-$f1:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    iget-object v2, p0, Lcom/android/server/am/-$Lambda$njIALZ9XLXuT-vhmazyQkVX7Z0U$1;->-$f2:Ljava/lang/Object;

    check-cast v2, Landroid/app/PictureInPictureParams;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->lambda$-com_android_server_am_ActivityManagerService_351999(Lcom/android/server/am/ActivityRecord;Landroid/app/PictureInPictureParams;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$Lambda$njIALZ9XLXuT-vhmazyQkVX7Z0U$1;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/am/-$Lambda$njIALZ9XLXuT-vhmazyQkVX7Z0U$1;->-$f1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/am/-$Lambda$njIALZ9XLXuT-vhmazyQkVX7Z0U$1;->-$f2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/server/am/-$Lambda$njIALZ9XLXuT-vhmazyQkVX7Z0U$1;->$m$0()V

    return-void
.end method
