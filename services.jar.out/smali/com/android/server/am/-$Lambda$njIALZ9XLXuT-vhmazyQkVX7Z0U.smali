.class final synthetic Lcom/android/server/am/-$Lambda$njIALZ9XLXuT-vhmazyQkVX7Z0U;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/os/ProcessCpuTracker$FilterStats;


# static fields
.field public static final synthetic $INST$0:Lcom/android/server/am/-$Lambda$njIALZ9XLXuT-vhmazyQkVX7Z0U;

.field public static final synthetic $INST$1:Lcom/android/server/am/-$Lambda$njIALZ9XLXuT-vhmazyQkVX7Z0U;


# instance fields
.field private final synthetic $id:B


# direct methods
.method private final synthetic $m$0(Lcom/android/internal/os/ProcessCpuTracker$Stats;)Z
    .locals 1
    .param p1, "arg0"    # Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .prologue
    invoke-static {p1}, Lcom/android/server/am/ActivityManagerService$2;->lambda$-com_android_server_am_ActivityManagerService$2_106213(Lcom/android/internal/os/ProcessCpuTracker$Stats;)Z

    move-result v0

    return v0
.end method

.method private final synthetic $m$1(Lcom/android/internal/os/ProcessCpuTracker$Stats;)Z
    .locals 1
    .param p1, "arg0"    # Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .prologue
    invoke-static {p1}, Lcom/android/server/am/ActivityManagerService;->lambda$-com_android_server_am_ActivityManagerService_770506(Lcom/android/internal/os/ProcessCpuTracker$Stats;)Z

    move-result v0

    return v0
.end method

.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/server/am/-$Lambda$njIALZ9XLXuT-vhmazyQkVX7Z0U;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/-$Lambda$njIALZ9XLXuT-vhmazyQkVX7Z0U;-><init>(B)V

    sput-object v0, Lcom/android/server/am/-$Lambda$njIALZ9XLXuT-vhmazyQkVX7Z0U;->$INST$0:Lcom/android/server/am/-$Lambda$njIALZ9XLXuT-vhmazyQkVX7Z0U;

    new-instance v0, Lcom/android/server/am/-$Lambda$njIALZ9XLXuT-vhmazyQkVX7Z0U;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/server/am/-$Lambda$njIALZ9XLXuT-vhmazyQkVX7Z0U;-><init>(B)V

    sput-object v0, Lcom/android/server/am/-$Lambda$njIALZ9XLXuT-vhmazyQkVX7Z0U;->$INST$1:Lcom/android/server/am/-$Lambda$njIALZ9XLXuT-vhmazyQkVX7Z0U;

    return-void
.end method

.method private synthetic constructor <init>(B)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/android/server/am/-$Lambda$njIALZ9XLXuT-vhmazyQkVX7Z0U;->$id:B

    return-void
.end method


# virtual methods
.method public final needed(Lcom/android/internal/os/ProcessCpuTracker$Stats;)Z
    .locals 1

    .prologue
    iget-byte v0, p0, Lcom/android/server/am/-$Lambda$njIALZ9XLXuT-vhmazyQkVX7Z0U;->$id:B

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/server/am/-$Lambda$njIALZ9XLXuT-vhmazyQkVX7Z0U;->$m$0(Lcom/android/internal/os/ProcessCpuTracker$Stats;)Z

    move-result v0

    return v0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/server/am/-$Lambda$njIALZ9XLXuT-vhmazyQkVX7Z0U;->$m$1(Lcom/android/internal/os/ProcessCpuTracker$Stats;)Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
