.class Lcom/android/server/am/ActivityStack;
.super Lcom/android/server/am/ConfigurationContainer;
.source "ActivityStack.java"

# interfaces
.implements Lcom/android/server/wm/StackWindowListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityStack$ActivityStackHandler;,
        Lcom/android/server/am/ActivityStack$ActivityState;,
        Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/server/wm/StackWindowController;",
        ">",
        "Lcom/android/server/am/ConfigurationContainer;",
        "Lcom/android/server/wm/StackWindowListener;"
    }
.end annotation


# static fields
.field private static final synthetic -com-android-server-am-ActivityStack$ActivityStateSwitchesValues:[I = null

.field private static final ACTIVITY_INACTIVE_RESET_TIME:J = 0x0L

.field static final DESTROY_ACTIVITIES_MSG:I = 0x69

.field private static final DESTROY_TIMEOUT:I = 0x2710

.field static final DESTROY_TIMEOUT_MSG:I = 0x66

.field static final FINISH_AFTER_PAUSE:I = 0x1

.field static final FINISH_AFTER_VISIBLE:I = 0x2

.field static final FINISH_IMMEDIATELY:I = 0x0

.field private static final FIT_WITHIN_BOUNDS_DIVIDER:I = 0x3

.field static final LAUNCH_TICK:I = 0x1f4

.field static final LAUNCH_TICK_MSG:I = 0x67

.field private static final MAX_STOPPING_TO_FORCE:I = 0x3

.field private static final PAUSE_TIMEOUT:I = 0x1f4

.field static final PAUSE_TIMEOUT_MSG:I = 0x65

.field protected static final REMOVE_TASK_MODE_DESTROYING:I = 0x0

.field static final REMOVE_TASK_MODE_MOVING:I = 0x1

.field static final REMOVE_TASK_MODE_MOVING_TO_TOP:I = 0x2

.field private static final SHOW_APP_STARTING_PREVIEW:Z = true

.field static final STACK_INVISIBLE:I = 0x0

.field static final STACK_VISIBLE:I = 0x1

.field private static final STOP_TIMEOUT:I = 0x2710

.field static final STOP_TIMEOUT_MSG:I = 0x68

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_ADD_REMOVE:Ljava/lang/String;

.field private static final TAG_APP:Ljava/lang/String;

.field private static final TAG_CLEANUP:Ljava/lang/String;

.field private static final TAG_CONTAINERS:Ljava/lang/String;

.field private static final TAG_PAUSE:Ljava/lang/String;

.field private static final TAG_RELEASE:Ljava/lang/String;

.field private static final TAG_RESULTS:Ljava/lang/String;

.field private static final TAG_SAVED_STATE:Ljava/lang/String;

.field private static final TAG_STACK:Ljava/lang/String;

.field private static final TAG_STATES:Ljava/lang/String;

.field private static final TAG_SWITCH:Ljava/lang/String;

.field private static final TAG_TASKS:Ljava/lang/String;

.field private static final TAG_TRANSITION:Ljava/lang/String;

.field private static final TAG_USER_LEAVING:Ljava/lang/String;

.field private static final TAG_VISIBILITY:Ljava/lang/String;

.field private static final TRANSLUCENT_CONVERSION_TIMEOUT:J = 0x7d0L

.field static final TRANSLUCENT_TIMEOUT_MSG:I = 0x6a


# instance fields
.field mBounds:Landroid/graphics/Rect;

.field mConfigWillChange:Z

.field mCurrentUser:I

.field private final mDeferredBounds:Landroid/graphics/Rect;

.field private final mDeferredTaskBounds:Landroid/graphics/Rect;

.field private final mDeferredTaskInsetBounds:Landroid/graphics/Rect;

.field mDisplayId:I

.field mForceHidden:Z

.field mFullscreen:Z

.field mFullyDrawnStartTime:J

.field final mHandler:Landroid/os/Handler;

.field final mLRUActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

.field mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

.field mLaunchStartTime:J

.field final mNoAnimActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mPausingActivity:Lcom/android/server/am/ActivityRecord;

.field private final mRecentTasks:Lcom/android/server/am/RecentTasks;

.field mResumedActivity:Lcom/android/server/am/ActivityRecord;

.field final mService:Lcom/android/server/am/ActivityManagerService;

.field final mStackId:I

.field protected final mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field mStacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityStack;",
            ">;"
        }
    .end annotation
.end field

.field private final mTaskHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mTaskPositioner:Lcom/android/server/am/LaunchingTaskPositioner;

.field private final mTmpBounds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpConfigs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/res/Configuration;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpInsetBounds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpRect2:Landroid/graphics/Rect;

.field private mTopActivityOccludesKeyguard:Z

.field private mTopDismissingKeyguardActivity:Lcom/android/server/am/ActivityRecord;

.field mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

.field mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateBoundsDeferred:Z

.field private mUpdateBoundsDeferredCalled:Z

.field mWindowContainerController:Lcom/android/server/wm/StackWindowController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/am/ActivityStack;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static synthetic -getcom-android-server-am-ActivityStack$ActivityStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/server/am/ActivityStack;->-com-android-server-am-ActivityStack$ActivityStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/ActivityStack;->-com-android-server-am-ActivityStack$ActivityStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/server/am/ActivityStack$ActivityState;->values()[Lcom/android/server/am/ActivityStack$ActivityState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack$ActivityState;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_8

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack$ActivityState;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_7

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->FINISHING:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack$ActivityState;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_6

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack$ActivityState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_5

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack$ActivityState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack$ActivityState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_3

    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack$ActivityState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_2

    :goto_6
    :try_start_7
    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack$ActivityState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1

    :goto_7
    :try_start_8
    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack$ActivityState;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_0

    :goto_8
    sput-object v0, Lcom/android/server/am/ActivityStack;->-com-android-server-am-ActivityStack$ActivityStateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_8

    :catch_1
    move-exception v1

    goto :goto_7

    :catch_2
    move-exception v1

    goto :goto_6

    :catch_3
    move-exception v1

    goto :goto_5

    :catch_4
    move-exception v1

    goto :goto_4

    :catch_5
    move-exception v1

    goto :goto_3

    :catch_6
    move-exception v1

    goto :goto_2

    :catch_7
    move-exception v1

    goto :goto_1

    :catch_8
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -wrap0(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/am/ActivityStack;
    .param p1, "owner"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ActivityStack;->destroyActivitiesLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/am/ActivityStack;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_ADD_REMOVE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActivityStack;->TAG_ADD_REMOVE:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/am/ActivityStack;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_APP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActivityStack;->TAG_APP:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/am/ActivityStack;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_CLEANUP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActivityStack;->TAG_CLEANUP:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/am/ActivityStack;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_CONTAINERS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActivityStack;->TAG_CONTAINERS:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/am/ActivityStack;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_PAUSE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActivityStack;->TAG_PAUSE:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/am/ActivityStack;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActivityStack;->TAG_RELEASE:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/am/ActivityStack;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_RESULTS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActivityStack;->TAG_RESULTS:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/am/ActivityStack;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_SAVED_STATE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActivityStack;->TAG_SAVED_STATE:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/am/ActivityStack;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_STACK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActivityStack;->TAG_STACK:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/am/ActivityStack;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_STATES:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActivityStack;->TAG_STATES:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/am/ActivityStack;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_SWITCH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActivityStack;->TAG_SWITCH:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/am/ActivityStack;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_TASKS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActivityStack;->TAG_TASKS:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/am/ActivityStack;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_TRANSITION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActivityStack;->TAG_TRANSITION:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/am/ActivityStack;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_USER_LEAVING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActivityStack;->TAG_USER_LEAVING:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/am/ActivityStack;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_VISIBILITY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActivityStack;->TAG_VISIBILITY:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;ILcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/RecentTasks;Z)V
    .locals 4
    .param p1, "display"    # Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    .param p2, "stackId"    # I
    .param p3, "supervisor"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p4, "recentTasks"    # Lcom/android/server/am/RecentTasks;
    .param p5, "onTop"    # Z

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/server/am/ConfigurationContainer;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStack;->mForceHidden:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStack;->mFullscreen:Z

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mDeferredBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mDeferredTaskBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mDeferredTaskInsetBounds:Landroid/graphics/Rect;

    iput-wide v2, p0, Lcom/android/server/am/ActivityStack;->mLaunchStartTime:J

    iput-wide v2, p0, Lcom/android/server/am/ActivityStack;->mFullyDrawnStartTime:J

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mTmpConfigs:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mTmpBounds:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mTmpInsetBounds:Landroid/util/SparseArray;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    iput-object p3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, p3, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    new-instance v0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService$MainHandler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/android/server/am/ActivityStack$ActivityStackHandler;-><init>(Lcom/android/server/am/ActivityStack;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iput p2, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0}, Lcom/android/server/am/UserController;->getCurrentUserIdLocked()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityStack;->mCurrentUser:I

    iput-object p4, p0, Lcom/android/server/am/ActivityStack;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    iget v0, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    new-instance v0, Lcom/android/server/am/LaunchingTaskPositioner;

    invoke-direct {v0}, Lcom/android/server/am/LaunchingTaskPositioner;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskPositioner:Lcom/android/server/am/LaunchingTaskPositioner;

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    iget v0, p1, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, p5, v2}, Lcom/android/server/am/ActivityStack;->createStackWindowController(IZLandroid/graphics/Rect;)Lcom/android/server/wm/StackWindowController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {v0, v2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    invoke-direct {p0, p1, v1, p5}, Lcom/android/server/am/ActivityStack;->postAddToDisplay(Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;Landroid/graphics/Rect;Z)V

    return-void

    :cond_0
    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    goto :goto_1
.end method

.method private adjustFocusToNextFocusableStackLocked(Ljava/lang/String;)Z
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/ActivityStack;->adjustFocusToNextFocusableStackLocked(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private adjustFocusToNextFocusableStackLocked(Ljava/lang/String;Z)Z
    .locals 6
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "allowFocusSelf"    # Z

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v5, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isAssistantStack()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->bottomTask()Lcom/android/server/am/TaskRecord;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->bottomTask()Lcom/android/server/am/TaskRecord;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    move-result v4

    if-ne v4, v5, :cond_0

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStackTaskToTop(Ljava/lang/String;)Z

    move-result v3

    return v3

    :cond_0
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    if-eqz p2, :cond_1

    :goto_0
    invoke-virtual {v4, v3}, Lcom/android/server/am/ActivityStackSupervisor;->getNextFocusableStackLocked(Lcom/android/server/am/ActivityStack;)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " adjustFocusToNextFocusableStack"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "myReason":Ljava/lang/String;
    if-nez v1, :cond_2

    const/4 v3, 0x0

    return v3

    .end local v0    # "myReason":Ljava/lang/String;
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_1
    move-object v3, p0

    goto :goto_0

    .restart local v0    # "myReason":Ljava/lang/String;
    .restart local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_2
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .local v2, "top":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->isHomeOrRecentsStack()Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v2, :cond_3

    iget-boolean v3, v2, Lcom/android/server/am/ActivityRecord;->visible:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStackTaskToTop(Ljava/lang/String;)Z

    move-result v3

    return v3

    :cond_4
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->isAssistantStack()Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    move-result v3

    if-ne v3, v5, :cond_5

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const-string/jumbo v4, "adjustAssistantReturnToHome"

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStackTaskToTop(Ljava/lang/String;)Z

    :cond_5
    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    return v5
.end method

.method private adjustFocusedActivityStackLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V
    .locals 7
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4, p0}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eq v4, p1, :cond_1

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v4, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .local v2, "next":Lcom/android/server/am/ActivityRecord;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " adjustFocus"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "myReason":Ljava/lang/String;
    if-eq v2, p1, :cond_8

    if-eqz v2, :cond_2

    iget v4, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-static {v4}, Landroid/app/ActivityManager$StackId;->keepFocusInStackIfPossible(I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isFocusable()Z

    move-result v4

    if-eqz v4, :cond_2

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    .local v3, "task":Lcom/android/server/am/TaskRecord;
    if-nez v3, :cond_3

    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "activity no longer associated with task:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->isAssistantStack()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->isOverAssistantStack()Z

    move-result v0

    :goto_0
    iget-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v4, :cond_8

    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityStack;->isATopFinishingTask(Lcom/android/server/am/TaskRecord;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v4

    if-nez v4, :cond_4

    if-eqz v0, :cond_8

    :cond_4
    iget-boolean v4, p0, Lcom/android/server/am/ActivityStack;->mFullscreen:Z

    if-eqz v4, :cond_5

    if-eqz v0, :cond_7

    :cond_5
    invoke-direct {p0, v1}, Lcom/android/server/am/ActivityStack;->adjustFocusToNextFocusableStackLocked(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    return-void

    :cond_6
    const/4 v0, 0x1

    .local v0, "isAssistantOrOverAssistant":Z
    goto :goto_0

    .end local v0    # "isAssistantOrOverAssistant":Z
    :cond_7
    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4, v1}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStackTaskToTop(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    return-void

    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    :cond_8
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Lcom/android/server/am/ActivityStackSupervisor;->moveFocusableActivityStackToFrontLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z

    return-void
.end method

.method private canEnterPipOnTaskSwitch(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z
    .locals 4
    .param p1, "pipCandidate"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "toFrontTask"    # Lcom/android/server/am/TaskRecord;
    .param p3, "toFrontActivity"    # Lcom/android/server/am/ActivityRecord;
    .param p4, "opts"    # Landroid/app/ActivityOptions;

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v3, 0x0

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Landroid/app/ActivityOptions;->disallowEnterPictureInPictureWhileLaunching()Z

    move-result v1

    if-eqz v1, :cond_0

    return v3

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getStackId()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    :cond_1
    return v3

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/android/server/am/TaskRecord;->getStackId()I

    move-result v0

    .local v0, "targetStackId":I
    :goto_0
    const/4 v1, 0x6

    if-ne v0, v1, :cond_4

    return v3

    .end local v0    # "targetStackId":I
    :cond_3
    invoke-virtual {p3}, Lcom/android/server/am/ActivityRecord;->getStackId()I

    move-result v0

    .restart local v0    # "targetStackId":I
    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    return v1
.end method

.method private canShowWithInsecureKeyguard()Z
    .locals 5

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    move-result-object v0

    .local v0, "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    if-nez v0, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Stack is not attached to any display, stackId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getFlags()I

    move-result v1

    .local v1, "flags":I
    and-int/lit8 v3, v1, 0x20

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method private checkTranslucentActivityWaiting(Lcom/android/server/am/ActivityRecord;)V
    .locals 2
    .param p1, "top"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStack;->notifyActivityDrawnLocked(Lcom/android/server/am/ActivityRecord;)V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    return-void
.end method

.method private cleanUpActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V
    .locals 6
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "cleanServices"    # Z
    .param p3, "setState"    # Z

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->onActivityRemovedFromStack(Lcom/android/server/am/ActivityRecord;)V

    iput-boolean v5, p1, Lcom/android/server/am/ActivityRecord;->deferRelaunchUntilPaused:Z

    iput-boolean v5, p1, Lcom/android/server/am/ActivityRecord;->frozenBeforeDestroy:Z

    if-eqz p3, :cond_0

    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v3, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v4, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    :cond_0
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityStackSupervisor;->cleanupActivity(Lcom/android/server/am/ActivityRecord;)V

    iget-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_3

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    if-eqz v3, :cond_3

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "apr$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .local v0, "apr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/PendingIntentRecord;

    .local v2, "rec":Lcom/android/server/am/PendingIntentRecord;
    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, v2, v5}, Lcom/android/server/am/ActivityManagerService;->cancelIntentSenderLocked(Lcom/android/server/am/PendingIntentRecord;Z)V

    goto :goto_0

    .end local v0    # "apr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    .end local v2    # "rec":Lcom/android/server/am/PendingIntentRecord;
    :cond_2
    iput-object v4, p1, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    .end local v1    # "apr$iterator":Ljava/util/Iterator;
    :cond_3
    if-eqz p2, :cond_4

    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStack;->cleanUpActivityServicesLocked(Lcom/android/server/am/ActivityRecord;)V

    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService;->notifyAppRelaunchesCleared(Landroid/os/IBinder;)V

    return-void
.end method

.method private cleanUpActivityServicesLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v3, 0x0

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/am/ConnectionRecord;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ConnectionRecord;

    .local v0, "c":Lcom/android/server/am/ConnectionRecord;
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {v2, v0, v3, p1}, Lcom/android/server/am/ActiveServices;->removeConnectionLocked(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;)V

    goto :goto_0

    .end local v0    # "c":Lcom/android/server/am/ConnectionRecord;
    :cond_0
    iput-object v3, p1, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/am/ConnectionRecord;>;"
    :cond_1
    return-void
.end method

.method private clearLaunchTime(Lcom/android/server/am/ActivityRecord;)V
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-wide v2, p1, Lcom/android/server/am/ActivityRecord;->fullyDrawnStartTime:J

    iput-wide v2, p1, Lcom/android/server/am/ActivityRecord;->displayStartTime:J

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleTimeoutLocked(Lcom/android/server/am/ActivityRecord;)V

    goto :goto_0
.end method

.method private completePauseLocked(ZLcom/android/server/am/ActivityRecord;)V
    .locals 12
    .param p1, "resumeNext"    # Z
    .param p2, "resuming"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .local v1, "prev":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_2

    iget-object v8, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v9, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v8, v9, :cond_9

    const/4 v7, 0x1

    .local v7, "wasStopping":Z
    :goto_0
    sget-object v8, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v8, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    iget-boolean v8, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v8, :cond_a

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-virtual {p0, v1, v8, v9}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .end local v1    # "prev":Lcom/android/server/am/ActivityRecord;
    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    :cond_1
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .end local v7    # "wasStopping":Z
    :cond_2
    if-eqz p1, :cond_3

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v6

    .local v6, "topStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->shouldSleepOrShutDownActivities()Z

    move-result v8

    if-nez v8, :cond_f

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v9, 0x0

    invoke-virtual {v8, v6, v1, v9}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z

    .end local v6    # "topStack":Lcom/android/server/am/ActivityStack;
    :cond_3
    :goto_2
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->resumeKeyDispatchingLocked()V

    iget-object v8, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v8, :cond_5

    iget-wide v8, v1, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_5

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v8}, Lcom/android/server/am/BatteryStatsService;->isOnBattery()Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    iget-object v9, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v9, v9, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v8, v9}, Lcom/android/internal/os/ProcessCpuTracker;->getCpuTimeForPid(I)J

    move-result-wide v8

    iget-wide v10, v1, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    sub-long v2, v8, v10

    .local v2, "diff":J
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-lez v8, :cond_5

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v8}, Lcom/android/server/am/BatteryStatsService;->getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v0

    .local v0, "bsi":Lcom/android/internal/os/BatteryStatsImpl;
    monitor-enter v0

    :try_start_0
    iget-object v8, v1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v9, v1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl;->getProcessStatsLocked(ILjava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object v4

    .local v4, "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    if-eqz v4, :cond_4

    invoke-virtual {v4, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->addForegroundTimeLocked(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    monitor-exit v0

    .end local v0    # "bsi":Lcom/android/internal/os/BatteryStatsImpl;
    .end local v2    # "diff":J
    .end local v4    # "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    :cond_5
    const-wide/16 v8, 0x0

    iput-wide v8, v1, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    :cond_6
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-boolean v8, v8, Lcom/android/server/am/ActivityStackSupervisor;->mAppVisibilitiesChangedSinceLastPause:Z

    if-nez v8, :cond_7

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v8

    if-eqz v8, :cond_8

    :cond_7
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-virtual {v8}, Lcom/android/server/am/TaskChangeNotificationController;->notifyTaskStackChanged()V

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/android/server/am/ActivityStackSupervisor;->mAppVisibilitiesChangedSinceLastPause:Z

    :cond_8
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, p2, v9, v10}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    return-void

    .restart local v1    # "prev":Lcom/android/server/am/ActivityRecord;
    :cond_9
    const/4 v7, 0x0

    .restart local v7    # "wasStopping":Z
    goto/16 :goto_0

    :cond_a
    iget-object v8, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v8, :cond_e

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v8, v8, Lcom/android/server/am/ActivityStackSupervisor;->mActivitiesWaitingForVisibleActivity:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v8

    iget-boolean v8, v1, Lcom/android/server/am/ActivityRecord;->deferRelaunchUntilPaused:Z

    if-eqz v8, :cond_b

    iget-boolean v8, v1, Lcom/android/server/am/ActivityRecord;->preserveWindowOnDeferredRelaunch:Z

    const/4 v9, 0x0

    invoke-virtual {v1, v9, v8}, Lcom/android/server/am/ActivityRecord;->relaunchActivityLocked(ZZ)V

    goto/16 :goto_1

    :cond_b
    if-eqz v7, :cond_c

    sget-object v8, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v8, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    goto/16 :goto_1

    :cond_c
    iget-boolean v8, v1, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v8, :cond_d

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->shouldSleepOrShutDownActivities()Z

    move-result v8

    if-eqz v8, :cond_0

    :cond_d
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Lcom/android/server/am/ActivityRecord;->setDeferHidingClient(Z)V

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0, v1, v8, v9}, Lcom/android/server/am/ActivityStack;->addToStopping(Lcom/android/server/am/ActivityRecord;ZZ)V

    goto/16 :goto_1

    :cond_e
    const/4 v1, 0x0

    .local v1, "prev":Lcom/android/server/am/ActivityRecord;
    goto/16 :goto_1

    .end local v1    # "prev":Lcom/android/server/am/ActivityRecord;
    .end local v7    # "wasStopping":Z
    .restart local v6    # "topStack":Lcom/android/server/am/ActivityStack;
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->checkReadyForSleep()V

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .local v5, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v5, :cond_10

    if-eqz v1, :cond_3

    if-eq v5, v1, :cond_3

    :cond_10
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    goto/16 :goto_2

    .end local v5    # "top":Lcom/android/server/am/ActivityRecord;
    .end local v6    # "topStack":Lcom/android/server/am/ActivityStack;
    .restart local v0    # "bsi":Lcom/android/internal/os/BatteryStatsImpl;
    .restart local v2    # "diff":J
    :catchall_0
    move-exception v8

    monitor-exit v0

    throw v8
.end method

.method private containsActivityFromStack(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    .local p1, "rs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "r$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    if-ne v2, p0, :cond_0

    const/4 v2, 0x1

    return v2

    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private destroyActivitiesLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 7
    .param p1, "owner"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v3, 0x0

    .local v3, "lastIsOpaque":Z
    const/4 v2, 0x0

    .local v2, "activityRemoved":Z
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v5, v6, -0x1

    .local v5, "taskNdx":I
    :goto_0
    if-ltz v5, :cond_5

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/TaskRecord;

    iget-object v0, v6, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "activityNdx":I
    :goto_1
    if-ltz v1, :cond_4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v6, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v6, :cond_1

    :cond_0
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    iget-boolean v6, v4, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v6, :cond_2

    const/4 v3, 0x1

    :cond_2
    if-eqz p1, :cond_3

    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v6, p1, :cond_0

    :cond_3
    if-eqz v3, :cond_0

    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->isDestroyable()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    invoke-virtual {p0, v4, v6, p2}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v2, 0x1

    goto :goto_2

    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_4
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    :cond_5
    if-eqz v2, :cond_6

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    :cond_6
    return-void
.end method

.method private findStackInsertIndex(Z)I
    .locals 4
    .param p1, "onTop"    # Z

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v2, 0x0

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "addIndex":I
    if-lez v0, :cond_0

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    .local v1, "topStack":Lcom/android/server/am/ActivityStack;
    iget v2, v1, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-static {v2}, Landroid/app/ActivityManager$StackId;->isAlwaysOnTop(I)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eq v1, p0, :cond_0

    add-int/lit8 v0, v0, -0x1

    .end local v1    # "topStack":Lcom/android/server/am/ActivityStack;
    :cond_0
    return v0

    .end local v0    # "addIndex":I
    :cond_1
    return v2
.end method

.method private finishActivityResultsLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;)V
    .locals 8
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/content/Intent;

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v7, 0x0

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .local v6, "resultTo":Lcom/android/server/am/ActivityRecord;
    if-eqz v6, :cond_2

    iget v0, v6, Lcom/android/server/am/ActivityRecord;->userId:I

    iget v1, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    if-eq v0, v1, :cond_0

    if-eqz p3, :cond_0

    iget v0, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-virtual {p3, v0}, Landroid/content/Intent;->prepareToLeaveUser(I)V

    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, v6, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;

    move-result-object v4

    iget v5, v6, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->grantUriPermissionFromIntentLocked(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/am/UriPermissionOwner;I)V

    :cond_1
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/am/ActivityRecord;->requestCode:I

    move-object v0, v6

    move-object v1, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityRecord;->addResultLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    iput-object v7, p1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    :cond_2
    iput-object v7, p1, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    iput-object v7, p1, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    iput-object v7, p1, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    iput-object v7, p1, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    return-void
.end method

.method private static fitWithinBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 6
    .param p0, "bounds"    # Landroid/graphics/Rect;
    .param p1, "stackBounds"    # Landroid/graphics/Rect;

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    return-void

    :cond_1
    iget v4, p0, Landroid/graphics/Rect;->left:I

    iget v5, p1, Landroid/graphics/Rect;->left:I

    if-lt v4, v5, :cond_2

    iget v4, p0, Landroid/graphics/Rect;->right:I

    iget v5, p1, Landroid/graphics/Rect;->right:I

    if-le v4, v5, :cond_4

    :cond_2
    iget v4, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v5, v5, 0x3

    sub-int v2, v4, v5

    .local v2, "maxRight":I
    iget v4, p1, Landroid/graphics/Rect;->left:I

    iget v5, p0, Landroid/graphics/Rect;->left:I

    sub-int v0, v4, v5

    .local v0, "horizontalDiff":I
    if-gez v0, :cond_8

    iget v4, p0, Landroid/graphics/Rect;->left:I

    if-lt v4, v2, :cond_8

    :goto_0
    iget v4, p0, Landroid/graphics/Rect;->left:I

    sub-int v0, v2, v4

    :cond_3
    iget v4, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v0

    iput v4, p0, Landroid/graphics/Rect;->left:I

    iget v4, p0, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v0

    iput v4, p0, Landroid/graphics/Rect;->right:I

    .end local v0    # "horizontalDiff":I
    .end local v2    # "maxRight":I
    :cond_4
    iget v4, p0, Landroid/graphics/Rect;->top:I

    iget v5, p1, Landroid/graphics/Rect;->top:I

    if-lt v4, v5, :cond_5

    iget v4, p0, Landroid/graphics/Rect;->bottom:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    if-le v4, v5, :cond_7

    :cond_5
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    div-int/lit8 v5, v5, 0x3

    sub-int v1, v4, v5

    .local v1, "maxBottom":I
    iget v4, p1, Landroid/graphics/Rect;->top:I

    iget v5, p0, Landroid/graphics/Rect;->top:I

    sub-int v3, v4, v5

    .local v3, "verticalDiff":I
    if-gez v3, :cond_9

    iget v4, p0, Landroid/graphics/Rect;->top:I

    if-lt v4, v1, :cond_9

    :goto_1
    iget v4, p0, Landroid/graphics/Rect;->top:I

    sub-int v3, v1, v4

    :cond_6
    iget v4, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v3

    iput v4, p0, Landroid/graphics/Rect;->top:I

    iget v4, p0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v3

    iput v4, p0, Landroid/graphics/Rect;->bottom:I

    .end local v1    # "maxBottom":I
    .end local v3    # "verticalDiff":I
    :cond_7
    return-void

    .restart local v0    # "horizontalDiff":I
    .restart local v2    # "maxRight":I
    :cond_8
    iget v4, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v0

    if-lt v4, v2, :cond_3

    goto :goto_0

    .end local v0    # "horizontalDiff":I
    .end local v2    # "maxRight":I
    .restart local v1    # "maxBottom":I
    .restart local v3    # "verticalDiff":I
    :cond_9
    iget v4, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v3

    if-lt v4, v1, :cond_6

    goto :goto_1
.end method

.method private getNextTask(Lcom/android/server/am/TaskRecord;)Lcom/android/server/am/TaskRecord;
    .locals 6
    .param p1, "targetTask"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .local v1, "index":I
    if-ltz v1, :cond_1

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "numTasks":I
    add-int/lit8 v0, v1, 0x1

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .local v3, "task":Lcom/android/server/am/TaskRecord;
    iget v4, v3, Lcom/android/server/am/TaskRecord;->userId:I

    iget v5, p1, Lcom/android/server/am/TaskRecord;->userId:I

    if-ne v4, v5, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    .end local v2    # "numTasks":I
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    :cond_1
    const/4 v4, 0x0

    return-object v4
.end method

.method private getTopStackOnDisplay()Lcom/android/server/am/ActivityStack;
    .locals 2

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    move-result-object v1

    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    .local v0, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    goto :goto_0
.end method

.method private hasFullscreenTask()Z
    .locals 4

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    .local v1, "task":Lcom/android/server/am/TaskRecord;
    iget-boolean v2, v1, Lcom/android/server/am/TaskRecord;->mFullscreen:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .end local v1    # "task":Lcom/android/server/am/TaskRecord;
    :cond_1
    return v3
.end method

.method private insertTaskAtPosition(Lcom/android/server/am/TaskRecord;I)V
    .locals 4
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "position"    # I

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p2, v0, :cond_0

    invoke-direct {p0, p1, v1}, Lcom/android/server/am/ActivityStack;->insertTaskAtTop(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/am/ActivityStack;->getAdjustedPositionForTask(Lcom/android/server/am/TaskRecord;ILcom/android/server/am/ActivityRecord;)I

    move-result p2

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getWindowContainerController()Lcom/android/server/wm/TaskWindowContainerController;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v0, v1, p2, v2, v3}, Lcom/android/server/wm/StackWindowController;->positionChildAt(Lcom/android/server/wm/TaskWindowContainerController;ILandroid/graphics/Rect;Landroid/content/res/Configuration;)V

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/ActivityStack;->updateTaskMovement(Lcom/android/server/am/TaskRecord;Z)V

    return-void
.end method

.method private insertTaskAtTop(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;)V
    .locals 4
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "starting"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v3, 0x1

    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStack;->updateTaskReturnToForTopInsertion(Lcom/android/server/am/TaskRecord;)V

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0, p1, v1, p2}, Lcom/android/server/am/ActivityStack;->getAdjustedPositionForTask(Lcom/android/server/am/TaskRecord;ILcom/android/server/am/ActivityRecord;)I

    move-result v0

    .local v0, "position":I
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-direct {p0, p1, v3}, Lcom/android/server/am/ActivityStack;->updateTaskMovement(Lcom/android/server/am/TaskRecord;Z)V

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getWindowContainerController()Lcom/android/server/wm/TaskWindowContainerController;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/StackWindowController;->positionChildAtTop(Lcom/android/server/wm/TaskWindowContainerController;Z)V

    return-void
.end method

.method private isStackTranslucent(Lcom/android/server/am/ActivityRecord;I)Z
    .locals 7
    .param p1, "starting"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "stackBehindId"    # I

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v6, 0x0

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    .local v4, "taskNdx":I
    :goto_0
    if-ltz v4, :cond_5

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .local v3, "task":Lcom/android/server/am/TaskRecord;
    iget-object v0, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "activityNdx":I
    :goto_1
    if-ltz v1, :cond_4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v5, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    iget-boolean v5, v2, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v5, :cond_2

    if-ne v2, p1, :cond_0

    :cond_2
    iget-boolean v5, v2, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v5, :cond_3

    return v6

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isHomeOrRecentsStack()Z

    move-result v5

    if-nez v5, :cond_0

    iget-boolean v5, v2, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {p2}, Landroid/app/ActivityManager$StackId;->isHomeOrRecentsStack(I)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isAssistantStack()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    return v6

    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_4
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    :cond_5
    const/4 v5, 0x1

    return v5
.end method

.method private isTaskSwitch(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Z
    .locals 3
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "topFocusedActivity"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V
    .locals 5
    .param p0, "tag"    # I
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .local v0, "data":Landroid/net/Uri;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget v3, p2, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    const/4 v4, 0x3

    aput-object v3, v2, v4

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v2, v4

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    aput-object v3, v2, v4

    const/4 v3, 0x6

    aput-object v1, v2, v3

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x7

    aput-object v3, v2, v4

    invoke-static {p0, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void

    :cond_0
    const/4 v1, 0x0

    .local v1, "strData":Ljava/lang/String;
    goto :goto_0
.end method

.method private makeInvisible(Lcom/android/server/am/ActivityRecord;)V
    .locals 6
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v3, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string/jumbo v3, "makeInvisible"

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v4}, Lcom/android/server/am/ActivityRecord;->checkEnterPictureInPictureState(Ljava/lang/String;Z)Z

    move-result v0

    .local v0, "canEnterPictureInPicture":Z
    if-eqz v0, :cond_2

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v3, v4, :cond_2

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v3, v4, :cond_2

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v3, v4, :cond_1

    const/4 v1, 0x1

    .local v1, "deferHidingClient":Z
    :goto_0
    invoke-virtual {p1, v1}, Lcom/android/server/am/ActivityRecord;->setDeferHidingClient(Z)V

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/android/server/am/ActivityRecord;->setVisible(Z)V

    invoke-static {}, Lcom/android/server/am/ActivityStack;->-getcom-android-server-am-ActivityStack$ActivityStateSwitchesValues()[I

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack$ActivityState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .end local v0    # "canEnterPictureInPicture":Z
    .end local v1    # "deferHidingClient":Z
    :goto_1
    return-void

    .restart local v0    # "canEnterPictureInPicture":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "deferHidingClient":Z
    goto :goto_0

    .end local v1    # "deferHidingClient":Z
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "deferHidingClient":Z
    goto :goto_0

    :pswitch_0
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_3

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_3

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/app/IApplicationThread;->scheduleWindowVisibility(Landroid/os/IBinder;Z)V

    :cond_3
    const/4 v3, 0x0

    iput-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .end local v0    # "canEnterPictureInPicture":Z
    .end local v1    # "deferHidingClient":Z
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/am/ActivityStack;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception thrown making hidden: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "canEnterPictureInPicture":Z
    .restart local v1    # "deferHidingClient":Z
    :pswitch_1
    const/4 v3, 0x1

    :try_start_1
    invoke-virtual {p0, p1, v3, v0}, Lcom/android/server/am/ActivityStack;->addToStopping(Lcom/android/server/am/ActivityRecord;ZZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private makeVisibleAndRestartIfNeeded(Lcom/android/server/am/ActivityRecord;IZZLcom/android/server/am/ActivityRecord;)Z
    .locals 3
    .param p1, "starting"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "configChanges"    # I
    .param p3, "isTop"    # Z
    .param p4, "andResume"    # Z
    .param p5, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p3, :cond_0

    iget-boolean v0, p5, Lcom/android/server/am/ActivityRecord;->visible:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    :cond_0
    if-eq p5, p1, :cond_1

    iget-object v0, p5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p5, v0, p2}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    :cond_1
    iget-boolean v0, p5, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p5, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p5, v2}, Lcom/android/server/am/ActivityRecord;->setVisible(Z)V

    :cond_3
    if-eq p5, p1, :cond_4

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p5, p4, v1}, Lcom/android/server/am/ActivityStackSupervisor;->startSpecificActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    return v2

    :cond_4
    return v1
.end method

.method private moveToBack(Lcom/android/server/am/TaskRecord;)V
    .locals 2
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isAttached()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-direct {p0, p1, v1}, Lcom/android/server/am/ActivityStack;->updateTaskMovement(Lcom/android/server/am/TaskRecord;Z)V

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getWindowContainerController()Lcom/android/server/wm/TaskWindowContainerController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/StackWindowController;->positionChildAtBottom(Lcom/android/server/wm/TaskWindowContainerController;)V

    :cond_1
    return-void
.end method

.method private postAddTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityStack;Z)V
    .locals 4
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "prevStack"    # Lcom/android/server/am/ActivityStack;
    .param p3, "schedulePictureInPictureModeChange"    # Z

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    if-eqz p3, :cond_1

    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleUpdatePictureInPictureModeIfNeeded(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityStack;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p1, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p1, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object v2, p1, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    iget v3, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-interface {v1, v2, v3}, Landroid/service/voice/IVoiceInteractionSession;->taskStarted(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private postAddToDisplay(Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;Landroid/graphics/Rect;Z)V
    .locals 7
    .param p1, "activityDisplay"    # Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "onTop"    # Z

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v6, 0x1

    const/4 v2, 0x0

    iget v0, p1, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    iput v0, p0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    iget-object v0, p1, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    if-eqz p2, :cond_2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :goto_0
    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mBounds:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_3

    move v0, v6

    :goto_1
    iput-boolean v0, p0, Lcom/android/server/am/ActivityStack;->mFullscreen:Z

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskPositioner:Lcom/android/server/am/LaunchingTaskPositioner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskPositioner:Lcom/android/server/am/LaunchingTaskPositioner;

    iget-object v1, p1, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0, v1}, Lcom/android/server/am/LaunchingTaskPositioner;->setDisplay(Landroid/view/Display;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskPositioner:Lcom/android/server/am/LaunchingTaskPositioner;

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/am/LaunchingTaskPositioner;->configure(Landroid/graphics/Rect;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->onParentChanged()V

    invoke-direct {p0, p3}, Lcom/android/server/am/ActivityStack;->findStackInsertIndex(Z)I

    move-result v0

    invoke-virtual {p1, p0, v0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->attachStack(Lcom/android/server/am/ActivityStack;I)V

    iget v0, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mBounds:Landroid/graphics/Rect;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityStackSupervisor;->resizeDockedStackLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    :cond_1
    return-void

    :cond_2
    move-object v0, v2

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private preAddTask(Lcom/android/server/am/TaskRecord;Ljava/lang/String;Z)Lcom/android/server/am/ActivityStack;
    .locals 2
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "toTop"    # Z

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .local v0, "prevStack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    if-eqz p3, :cond_1

    const/4 v1, 0x2

    :goto_0
    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/am/ActivityStack;->removeTask(Lcom/android/server/am/TaskRecord;Ljava/lang/String;I)V

    :cond_0
    return-object v0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private prepareActivityHideTransitionAnimation(Lcom/android/server/am/ActivityRecord;I)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "transit"    # I

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p2, v1}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    invoke-virtual {p1, v1}, Lcom/android/server/am/ActivityRecord;->setVisibility(Z)V

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivitiesWaitingForVisibleActivity:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mActivitiesWaitingForVisibleActivity:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V
    .locals 7
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-direct {p0, p1, v6, v4}, Lcom/android/server/am/ActivityStack;->finishActivityResultsLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;)V

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->makeFinishingLocked()V

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->takeFromHistory()V

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v3, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v4, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->removeWindowContainer()V

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    .local v2, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v2, :cond_4

    invoke-virtual {v2, p1}, Lcom/android/server/am/TaskRecord;->removeActivity(Lcom/android/server/am/ActivityRecord;)Z

    move-result v0

    :goto_0
    if-eqz v2, :cond_5

    invoke-virtual {v2, v6}, Lcom/android/server/am/TaskRecord;->onlyHasTaskOverlayActivities(Z)Z

    move-result v1

    :goto_1
    if-nez v0, :cond_0

    if-eqz v1, :cond_3

    :cond_0
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, p0}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    if-ne v2, v3, :cond_1

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3, p2}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStackTaskToTop(Ljava/lang/String;)Z

    :cond_1
    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v4, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v6, v6, v5}, Lcom/android/server/am/ActivityStackSupervisor;->removeTaskByIdLocked(IZZZ)Z

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p0, v2, p2, v6}, Lcom/android/server/am/ActivityStack;->removeTask(Lcom/android/server/am/TaskRecord;Ljava/lang/String;I)V

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStack;->cleanUpActivityServicesLocked(Lcom/android/server/am/ActivityRecord;)V

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->removeUriPermissionsLocked()V

    return-void

    :cond_4
    const/4 v0, 0x0

    .local v0, "lastActivity":Z
    goto :goto_0

    .end local v0    # "lastActivity":Z
    :cond_5
    const/4 v1, 0x0

    .local v1, "onlyHasTaskOverlays":Z
    goto :goto_1
.end method

.method private removeFromDisplay()V
    .locals 8

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    move-result-object v7

    .local v7, "display":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    if-eqz v7, :cond_0

    invoke-virtual {v7, p0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->detachStack(Lcom/android/server/am/ActivityStack;)V

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskPositioner:Lcom/android/server/am/LaunchingTaskPositioner;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskPositioner:Lcom/android/server/am/LaunchingTaskPositioner;

    invoke-virtual {v0}, Lcom/android/server/am/LaunchingTaskPositioner;->reset()V

    :cond_1
    iget v0, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v6, 0x1

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityStackSupervisor;->resizeDockedStackLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    :cond_2
    return-void
.end method

.method private removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 3
    .param p2, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "listName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;",
            "Lcom/android/server/am/ProcessRecord;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "i":I
    :cond_0
    :goto_0
    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v2, p2, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStack;->removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    goto :goto_0

    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    return-void
.end method

.method private removeHistoryRecordsForAppLocked(Lcom/android/server/am/ProcessRecord;)Z
    .locals 14
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    const-string/jumbo v8, "mLRUActivities"

    invoke-direct {p0, v7, p1, v8}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v7, v7, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    const-string/jumbo v8, "mStoppingActivities"

    invoke-direct {p0, v7, p1, v8}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v7, v7, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    const-string/jumbo v8, "mGoingToSleepActivities"

    invoke-direct {p0, v7, p1, v8}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v7, v7, Lcom/android/server/am/ActivityStackSupervisor;->mActivitiesWaitingForVisibleActivity:Ljava/util/ArrayList;

    const-string/jumbo v8, "mActivitiesWaitingForVisibleActivity"

    invoke-direct {p0, v7, p1, v8}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v7, v7, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    const-string/jumbo v8, "mFinishingActivities"

    invoke-direct {p0, v7, p1, v8}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    const/4 v2, 0x0

    .local v2, "hasVisibleActivities":Z
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->numActivities()I

    move-result v3

    .local v3, "i":I
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v6, v7, -0x1

    .local v6, "taskNdx":I
    :goto_0
    if-ltz v6, :cond_9

    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/TaskRecord;

    iget-object v0, v7, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    .local v1, "activityNdx":I
    :goto_1
    if-ltz v1, :cond_8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    add-int/lit8 v3, v3, -0x1

    iget-object v7, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v7, p1, :cond_4

    iget-boolean v7, v4, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v7, :cond_0

    const/4 v2, 0x1

    :cond_0
    iget-boolean v7, v4, Lcom/android/server/am/ActivityRecord;->haveState:Z

    if-nez v7, :cond_1

    iget-boolean v7, v4, Lcom/android/server/am/ActivityRecord;->stateNotNeeded:Z

    xor-int/lit8 v7, v7, 0x1

    if-nez v7, :cond_2

    :cond_1
    iget-boolean v7, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v7, :cond_5

    :cond_2
    const/4 v5, 0x1

    .local v5, "remove":Z
    :goto_2
    if-eqz v5, :cond_7

    iget-boolean v7, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v7, :cond_3

    sget-object v7, Lcom/android/server/am/ActivityStack;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Force removing "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ": app died, no saved state"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    iget v8, v4, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v8

    iget v8, v8, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v7, v9

    iget-object v8, v4, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    const/4 v9, 0x3

    aput-object v8, v7, v9

    const-string/jumbo v8, "proc died without state saved"

    const/4 v9, 0x4

    aput-object v8, v7, v9

    const/16 v8, 0x7531

    invoke-static {v8, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iget-object v7, v4, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v8, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v7, v8, :cond_3

    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, 0x0

    invoke-virtual {v7, v4, v8}, Lcom/android/server/am/ActivityManagerService;->updateUsageStats(Lcom/android/server/am/ActivityRecord;Z)V

    :cond_3
    :goto_3
    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-direct {p0, v4, v7, v8}, Lcom/android/server/am/ActivityStack;->cleanUpActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    if-eqz v5, :cond_4

    const-string/jumbo v7, "appDied"

    invoke-direct {p0, v4, v7}, Lcom/android/server/am/ActivityStack;->removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .end local v5    # "remove":Z
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_1

    :cond_5
    iget-boolean v7, v4, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v7, :cond_6

    iget v7, v4, Lcom/android/server/am/ActivityRecord;->launchCount:I

    const/4 v8, 0x2

    if-le v7, v8, :cond_6

    iget-wide v8, v4, Lcom/android/server/am/ActivityRecord;->lastLaunchTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    const-wide/32 v12, 0xea60

    sub-long/2addr v10, v12

    cmp-long v7, v8, v10

    if-lez v7, :cond_6

    const/4 v5, 0x1

    .restart local v5    # "remove":Z
    goto/16 :goto_2

    .end local v5    # "remove":Z
    :cond_6
    const/4 v5, 0x0

    .restart local v5    # "remove":Z
    goto/16 :goto_2

    :cond_7
    const/4 v7, 0x0

    iput-object v7, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v7, v4, Lcom/android/server/am/ActivityRecord;->visible:Z

    iput-boolean v7, v4, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    iget-boolean v7, v4, Lcom/android/server/am/ActivityRecord;->haveState:Z

    if-nez v7, :cond_3

    const/4 v7, 0x0

    iput-object v7, v4, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    goto :goto_3

    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v5    # "remove":Z
    :cond_8
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_0

    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    :cond_9
    return v2
.end method

.method private resetAffinityTaskIfNeededLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;ZZI)I
    .locals 23
    .param p1, "affinityTask"    # Lcom/android/server/am/TaskRecord;
    .param p2, "task"    # Lcom/android/server/am/TaskRecord;
    .param p3, "topTaskIsHigher"    # Z
    .param p4, "forceReset"    # Z
    .param p5, "taskInsertionPoint"    # I

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v14, -0x1

    .local v14, "replyChainEnd":I
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v22, v0

    .local v22, "taskId":I
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    move-object/from16 v21, v0

    .local v21, "taskAffinity":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .local v8, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v13

    .local v13, "numActivities":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/TaskRecord;->findEffectiveRootIndex()I

    move-result v15

    .local v15, "rootActivityNdx":I
    add-int/lit8 v12, v13, -0x1

    .local v12, "i":I
    :goto_0
    if-le v12, v15, :cond_0

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/am/ActivityRecord;

    .local v18, "target":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v18

    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v2, :cond_1

    .end local v18    # "target":Lcom/android/server/am/ActivityRecord;
    :cond_0
    return p5

    .restart local v18    # "target":Lcom/android/server/am/ActivityRecord;
    :cond_1
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v11, v2, Landroid/content/pm/ActivityInfo;->flags:I

    .local v11, "flags":I
    and-int/lit8 v2, v11, 0x2

    if-eqz v2, :cond_3

    const/4 v10, 0x1

    .local v10, "finishOnTaskLaunch":Z
    :goto_1
    and-int/lit8 v2, v11, 0x40

    if-eqz v2, :cond_4

    const/4 v9, 0x1

    .local v9, "allowTaskReparenting":Z
    :goto_2
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_5

    if-gez v14, :cond_2

    move v14, v12

    :cond_2
    :goto_3
    add-int/lit8 v12, v12, -0x1

    goto :goto_0

    .end local v9    # "allowTaskReparenting":Z
    .end local v10    # "finishOnTaskLaunch":Z
    :cond_3
    const/4 v10, 0x0

    .restart local v10    # "finishOnTaskLaunch":Z
    goto :goto_1

    :cond_4
    const/4 v9, 0x0

    .restart local v9    # "allowTaskReparenting":Z
    goto :goto_2

    :cond_5
    if-eqz p3, :cond_2

    if-eqz v9, :cond_2

    if-eqz v21, :cond_2

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez p4, :cond_6

    if-eqz v10, :cond_9

    :cond_6
    if-ltz v14, :cond_7

    move/from16 v17, v14

    .local v17, "start":I
    :goto_4
    move/from16 v16, v17

    .local v16, "srcPos":I
    :goto_5
    move/from16 v0, v16

    if-lt v0, v12, :cond_d

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .local v3, "p":Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_8

    :goto_6
    add-int/lit8 v16, v16, -0x1

    goto :goto_5

    .end local v3    # "p":Lcom/android/server/am/ActivityRecord;
    .end local v16    # "srcPos":I
    .end local v17    # "start":I
    :cond_7
    move/from16 v17, v12

    .restart local v17    # "start":I
    goto :goto_4

    .restart local v3    # "p":Lcom/android/server/am/ActivityRecord;
    .restart local v16    # "srcPos":I
    :cond_8
    const-string/jumbo v6, "move-affinity"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    goto :goto_6

    .end local v3    # "p":Lcom/android/server/am/ActivityRecord;
    .end local v16    # "srcPos":I
    .end local v17    # "start":I
    :cond_9
    if-gez p5, :cond_a

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p5

    :cond_a
    if-ltz v14, :cond_b

    move/from16 v17, v14

    .restart local v17    # "start":I
    :goto_7
    move/from16 v16, v17

    .restart local v16    # "srcPos":I
    :goto_8
    move/from16 v0, v16

    if-lt v0, v12, :cond_c

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .restart local v3    # "p":Lcom/android/server/am/ActivityRecord;
    const-string/jumbo v2, "resetAffinityTaskIfNeededLocked"

    move-object/from16 v0, p2

    move/from16 v1, p5

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/server/am/ActivityRecord;->reparent(Lcom/android/server/am/TaskRecord;ILjava/lang/String;)V

    add-int/lit8 v16, v16, -0x1

    goto :goto_8

    .end local v3    # "p":Lcom/android/server/am/ActivityRecord;
    .end local v16    # "srcPos":I
    .end local v17    # "start":I
    :cond_b
    move/from16 v17, v12

    .restart local v17    # "start":I
    goto :goto_7

    .restart local v16    # "srcPos":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/TaskRecord;->getWindowContainerController()Lcom/android/server/wm/TaskWindowContainerController;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Lcom/android/server/wm/StackWindowController;->positionChildAtTop(Lcom/android/server/wm/TaskWindowContainerController;Z)V

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->launchMode:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_d

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    .local v20, "taskActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v19

    .local v19, "targetNdx":I
    if-lez v19, :cond_d

    add-int/lit8 v2, v19, -0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .restart local v3    # "p":Lcom/android/server/am/ActivityRecord;
    iget-object v2, v3, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string/jumbo v6, "replace"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .end local v3    # "p":Lcom/android/server/am/ActivityRecord;
    .end local v19    # "targetNdx":I
    .end local v20    # "taskActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :cond_d
    const/4 v14, -0x1

    goto/16 :goto_3
.end method

.method private resetTargetTaskIfNeededLocked(Lcom/android/server/am/TaskRecord;Z)Landroid/app/ActivityOptions;
    .locals 28
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "forceReset"    # Z

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/16 v27, 0x0

    .local v27, "topOptions":Landroid/app/ActivityOptions;
    const/16 v21, -0x1

    .local v21, "replyChainEnd":I
    const/4 v13, 0x1

    .local v13, "canMoveOptions":Z
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .local v10, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v20

    .local v20, "numActivities":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/TaskRecord;->findEffectiveRootIndex()I

    move-result v22

    .local v22, "rootActivityNdx":I
    add-int/lit8 v18, v20, -0x1

    .end local v27    # "topOptions":Landroid/app/ActivityOptions;
    .local v18, "i":I
    :goto_0
    move/from16 v0, v18

    move/from16 v1, v22

    if-le v0, v1, :cond_0

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/server/am/ActivityRecord;

    .local v25, "target":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v25

    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v2, :cond_1

    .end local v25    # "target":Lcom/android/server/am/ActivityRecord;
    :cond_0
    return-object v27

    .restart local v25    # "target":Lcom/android/server/am/ActivityRecord;
    :cond_1
    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v2, Landroid/content/pm/ActivityInfo;->flags:I

    move/from16 v17, v0

    .local v17, "flags":I
    and-int/lit8 v2, v17, 0x2

    if-eqz v2, :cond_3

    const/16 v16, 0x1

    .local v16, "finishOnTaskLaunch":Z
    :goto_1
    and-int/lit8 v2, v17, 0x40

    if-eqz v2, :cond_4

    const/4 v11, 0x1

    .local v11, "allowTaskReparenting":Z
    :goto_2
    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/high16 v4, 0x80000

    and-int/2addr v2, v4

    if-eqz v2, :cond_5

    const/4 v14, 0x1

    .local v14, "clearWhenTaskReset":Z
    :goto_3
    if-nez v16, :cond_6

    xor-int/lit8 v2, v14, 0x1

    if-eqz v2, :cond_6

    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_6

    if-gez v21, :cond_2

    move/from16 v21, v18

    :cond_2
    :goto_4
    add-int/lit8 v18, v18, -0x1

    goto :goto_0

    .end local v11    # "allowTaskReparenting":Z
    .end local v14    # "clearWhenTaskReset":Z
    .end local v16    # "finishOnTaskLaunch":Z
    :cond_3
    const/16 v16, 0x0

    .restart local v16    # "finishOnTaskLaunch":Z
    goto :goto_1

    :cond_4
    const/4 v11, 0x0

    .restart local v11    # "allowTaskReparenting":Z
    goto :goto_2

    :cond_5
    const/4 v14, 0x0

    .restart local v14    # "clearWhenTaskReset":Z
    goto :goto_3

    :cond_6
    if-nez v16, :cond_d

    xor-int/lit8 v2, v14, 0x1

    if-eqz v2, :cond_d

    if-eqz v11, :cond_d

    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    if-eqz v2, :cond_d

    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ActivityRecord;

    :goto_5
    if-eqz v12, :cond_8

    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    if-eqz v2, :cond_8

    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    invoke-virtual {v12}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v12}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v26

    .local v26, "targetTask":Lcom/android/server/am/TaskRecord;
    :goto_6
    move/from16 v19, v13

    .local v19, "noOptions":Z
    if-gez v21, :cond_9

    move/from16 v24, v18

    .local v24, "start":I
    :goto_7
    move/from16 v23, v24

    .end local v19    # "noOptions":Z
    .local v23, "srcPos":I
    :goto_8
    move/from16 v0, v23

    move/from16 v1, v18

    if-lt v0, v1, :cond_c

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .local v3, "p":Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_a

    :goto_9
    add-int/lit8 v23, v23, -0x1

    goto :goto_8

    .end local v3    # "p":Lcom/android/server/am/ActivityRecord;
    .end local v23    # "srcPos":I
    .end local v24    # "start":I
    .end local v26    # "targetTask":Lcom/android/server/am/TaskRecord;
    :cond_7
    const/4 v12, 0x0

    .local v12, "bottom":Lcom/android/server/am/ActivityRecord;
    goto :goto_5

    .end local v12    # "bottom":Lcom/android/server/am/ActivityRecord;
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, v25

    iget v4, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityStackSupervisor;->getNextTaskIdForUserLocked(I)I

    move-result v3

    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, v25

    iget v9, v0, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/am/ActivityStack;->createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ZI)Lcom/android/server/am/TaskRecord;

    move-result-object v26

    .restart local v26    # "targetTask":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v26

    iput-object v2, v0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    goto :goto_6

    .restart local v19    # "noOptions":Z
    :cond_9
    move/from16 v24, v21

    .restart local v24    # "start":I
    goto :goto_7

    .end local v19    # "noOptions":Z
    .restart local v3    # "p":Lcom/android/server/am/ActivityRecord;
    .restart local v23    # "srcPos":I
    :cond_a
    const/4 v13, 0x0

    if-eqz v19, :cond_b

    if-nez v27, :cond_b

    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->takeOptionsLocked()Landroid/app/ActivityOptions;

    move-result-object v27

    .local v27, "topOptions":Landroid/app/ActivityOptions;
    if-eqz v27, :cond_b

    const/16 v19, 0x0

    .end local v27    # "topOptions":Landroid/app/ActivityOptions;
    :cond_b
    const-string/jumbo v2, "resetTargetTaskIfNeeded"

    const/4 v4, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v3, v0, v4, v2}, Lcom/android/server/am/ActivityRecord;->reparent(Lcom/android/server/am/TaskRecord;ILjava/lang/String;)V

    goto :goto_9

    .end local v3    # "p":Lcom/android/server/am/ActivityRecord;
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/am/TaskRecord;->getWindowContainerController()Lcom/android/server/wm/TaskWindowContainerController;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/server/wm/StackWindowController;->positionChildAtBottom(Lcom/android/server/wm/TaskWindowContainerController;)V

    const/16 v21, -0x1

    goto/16 :goto_4

    .end local v23    # "srcPos":I
    .end local v24    # "start":I
    .end local v26    # "targetTask":Lcom/android/server/am/TaskRecord;
    :cond_d
    if-nez p2, :cond_e

    if-nez v16, :cond_e

    if-eqz v14, :cond_15

    :cond_e
    if-eqz v14, :cond_10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v15, v2, -0x1

    .local v15, "end":I
    :goto_a
    move/from16 v19, v13

    .restart local v19    # "noOptions":Z
    move/from16 v23, v18

    .end local v19    # "noOptions":Z
    .restart local v23    # "srcPos":I
    :goto_b
    move/from16 v0, v23

    if-gt v0, v15, :cond_14

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .restart local v3    # "p":Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_12

    :cond_f
    :goto_c
    add-int/lit8 v23, v23, 0x1

    goto :goto_b

    .end local v3    # "p":Lcom/android/server/am/ActivityRecord;
    .end local v15    # "end":I
    .end local v23    # "srcPos":I
    :cond_10
    if-gez v21, :cond_11

    move/from16 v15, v18

    .restart local v15    # "end":I
    goto :goto_a

    .end local v15    # "end":I
    :cond_11
    move/from16 v15, v21

    .restart local v15    # "end":I
    goto :goto_a

    .restart local v3    # "p":Lcom/android/server/am/ActivityRecord;
    .restart local v23    # "srcPos":I
    :cond_12
    const/4 v13, 0x0

    if-eqz v19, :cond_13

    if-nez v27, :cond_13

    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->takeOptionsLocked()Landroid/app/ActivityOptions;

    move-result-object v27

    .restart local v27    # "topOptions":Landroid/app/ActivityOptions;
    if-eqz v27, :cond_13

    const/16 v19, 0x0

    .end local v27    # "topOptions":Landroid/app/ActivityOptions;
    :cond_13
    const-string/jumbo v6, "reset-task"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_f

    add-int/lit8 v15, v15, -0x1

    add-int/lit8 v23, v23, -0x1

    goto :goto_c

    .end local v3    # "p":Lcom/android/server/am/ActivityRecord;
    :cond_14
    const/16 v21, -0x1

    goto/16 :goto_4

    .end local v15    # "end":I
    .end local v23    # "srcPos":I
    :cond_15
    const/16 v21, -0x1

    goto/16 :goto_4
.end method

.method private resumeTopActivityInNextFocusableStack(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Ljava/lang/String;)Z
    .locals 3
    .param p1, "prev"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "options"    # Landroid/app/ActivityOptions;
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStack;->mFullscreen:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/am/ActivityStack;->adjustFocusToNextFocusableStackLocked(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v0

    return v0

    :cond_1
    invoke-static {p2}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p1, p3}, Lcom/android/server/am/ActivityStackSupervisor;->resumeHomeStackTask(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resumeTopActivityInnerLocked(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z
    .locals 35
    .param p1, "prev"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "options"    # Landroid/app/ActivityOptions;

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    return v3

    :cond_0
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v24

    .local v24, "next":Lcom/android/server/am/ActivityRecord;
    if-eqz v24, :cond_1

    const/16 v16, 0x1

    .local v16, "hasRunningActivity":Z
    :goto_0
    if-eqz v16, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    move-result-object v3

    if-nez v3, :cond_2

    const/4 v3, 0x0

    return v3

    .end local v16    # "hasRunningActivity":Z
    :cond_1
    const/16 v16, 0x0

    .restart local v16    # "hasRunningActivity":Z
    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->cancelInitializingActivities()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-boolean v0, v3, Lcom/android/server/am/ActivityStackSupervisor;->mUserLeaving:Z

    move/from16 v34, v0

    .local v34, "userLeaving":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/server/am/ActivityStackSupervisor;->mUserLeaving:Z

    if-nez v16, :cond_3

    const-string/jumbo v3, "noMoreActivities"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStack;->resumeTopActivityInNextFocusableStack(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Ljava/lang/String;)Z

    move-result v3

    return v3

    :cond_3
    const/4 v3, 0x0

    move-object/from16 v0, v24

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->delayedResume:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, v24

    if-ne v3, v0, :cond_4

    move-object/from16 v0, v24

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v3, v4, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->allResumedActivitiesComplete()Z

    move-result v3

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->executeAppTransition(Landroid/app/ActivityOptions;)V

    const/4 v3, 0x0

    return v3

    :cond_4
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v26

    .local v26, "nextTask":Lcom/android/server/am/TaskRecord;
    if-eqz p1, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v30

    :goto_1
    if-eqz v30, :cond_5

    invoke-virtual/range {v30 .. v30}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v3

    move-object/from16 v0, p0

    if-ne v3, v0, :cond_5

    invoke-virtual/range {v30 .. v30}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v3

    if-eqz v3, :cond_5

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_5

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v3, :cond_5

    move-object/from16 v0, v30

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_7

    invoke-virtual/range {v30 .. v30}, Lcom/android/server/am/TaskRecord;->setFrontOfTask()V

    :cond_5
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->shouldSleepOrShutDownActivities()Z

    move-result v3

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, v24

    if-ne v3, v0, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->allPausedActivitiesComplete()Z

    move-result v3

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->executeAppTransition(Landroid/app/ActivityOptions;)V

    const/4 v3, 0x0

    return v3

    :cond_6
    const/16 v30, 0x0

    .local v30, "prevTask":Lcom/android/server/am/TaskRecord;
    goto :goto_1

    .end local v30    # "prevTask":Lcom/android/server/am/TaskRecord;
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    move-object/from16 v0, v30

    if-eq v0, v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    add-int/lit8 v33, v3, 0x1

    .local v33, "taskNdx":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    move/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    goto :goto_2

    .end local v33    # "taskNdx":I
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    move-result v3

    if-nez v3, :cond_9

    const/4 v3, 0x0

    return v3

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    move-result v3

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const-string/jumbo v4, "prevFinished"

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Lcom/android/server/am/ActivityStackSupervisor;->resumeHomeStackTask(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z

    move-result v3

    :goto_3
    return v3

    :cond_a
    const/4 v3, 0x0

    goto :goto_3

    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    move-object/from16 v0, v24

    iget v4, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-virtual {v3, v4}, Lcom/android/server/am/UserController;->hasStartedUserState(I)Z

    move-result v3

    if-nez v3, :cond_c

    sget-object v3, Lcom/android/server/am/ActivityStack;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Skipping resume of top activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v24

    iget v5, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " is stopped"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    return v3

    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    move-object/from16 v0, v24

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mActivitiesWaitingForVisibleActivity:Ljava/util/ArrayList;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->allPausedActivitiesComplete()Z

    move-result v3

    if-nez v3, :cond_d

    const/4 v3, 0x0

    return v3

    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->setLaunchSource(I)V

    const/16 v21, 0x0

    .local v21, "lastResumedCanPip":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->getLastStack()Lcom/android/server/am/ActivityStack;

    move-result-object v18

    .local v18, "lastFocusedStack":Lcom/android/server/am/ActivityStack;
    if-eqz v18, :cond_e

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    if-eq v0, v1, :cond_e

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v19, v0

    .local v19, "lastResumed":Lcom/android/server/am/ActivityRecord;
    if-eqz v19, :cond_11

    const-string/jumbo v3, "resumeTopActivity"

    move-object/from16 v0, v19

    move/from16 v1, v34

    invoke-virtual {v0, v3, v1}, Lcom/android/server/am/ActivityRecord;->checkEnterPictureInPictureState(Ljava/lang/String;Z)Z

    move-result v21

    .end local v19    # "lastResumed":Lcom/android/server/am/ActivityRecord;
    .end local v21    # "lastResumedCanPip":Z
    :cond_e
    :goto_4
    move-object/from16 v0, v24

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v3, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v3, v3, 0x4000

    if-eqz v3, :cond_12

    xor-int/lit8 v32, v21, 0x1

    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x0

    move/from16 v0, v34

    move-object/from16 v1, v24

    invoke-virtual {v3, v0, v1, v4}, Lcom/android/server/am/ActivityStackSupervisor;->pauseBackStacks(ZLcom/android/server/am/ActivityRecord;Z)Z

    move-result v29

    .local v29, "pausing":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_f

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v34

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZLcom/android/server/am/ActivityRecord;Z)Z

    move-result v3

    or-int v29, v29, v3

    :cond_f
    if-eqz v29, :cond_13

    xor-int/lit8 v3, v32, 0x1

    if-eqz v3, :cond_13

    move-object/from16 v0, v24

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_10

    move-object/from16 v0, v24

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    :cond_10
    const/4 v3, 0x1

    return v3

    .end local v29    # "pausing":Z
    .restart local v19    # "lastResumed":Lcom/android/server/am/ActivityRecord;
    .restart local v21    # "lastResumedCanPip":Z
    :cond_11
    const/16 v21, 0x0

    goto :goto_4

    .end local v19    # "lastResumed":Lcom/android/server/am/ActivityRecord;
    .end local v21    # "lastResumedCanPip":Z
    :cond_12
    const/16 v32, 0x0

    .local v32, "resumeWhilePausing":Z
    goto :goto_5

    .end local v32    # "resumeWhilePausing":Z
    .restart local v29    # "pausing":Z
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, v24

    if-ne v3, v0, :cond_14

    move-object/from16 v0, v24

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v3, v4, :cond_14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->allResumedActivitiesComplete()Z

    move-result v3

    if-eqz v3, :cond_14

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->executeAppTransition(Landroid/app/ActivityOptions;)V

    const/4 v3, 0x1

    return v3

    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->shouldSleepActivities()Z

    move-result v3

    if-eqz v3, :cond_15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const-string/jumbo v7, "resume-no-history"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    :cond_15
    if-eqz p1, :cond_16

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mActivitiesWaitingForVisibleActivity:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20

    if-eqz v24, :cond_20

    move-object/from16 v0, v24

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_20

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mActivitiesWaitingForVisibleActivity:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_16
    :goto_6
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, v24

    iget v5, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    const/4 v6, 0x0

    invoke-interface {v3, v4, v6, v5}, Landroid/content/pm/IPackageManager;->setPackageStoppedState(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_7
    const/4 v11, 0x1

    .local v11, "anim":Z
    if-eqz p1, :cond_27

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_23

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    :goto_8
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityRecord;->setVisibility(Z)V

    :goto_9
    const/16 v31, 0x0

    .local v31, "resumeAnimOptions":Landroid/os/Bundle;
    if-eqz v11, :cond_29

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/ActivityRecord;->getOptionsForTargetActivityLocked()Landroid/app/ActivityOptions;

    move-result-object v28

    .local v28, "opts":Landroid/app/ActivityOptions;
    if-eqz v28, :cond_17

    invoke-virtual/range {v28 .. v28}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v31

    .end local v31    # "resumeAnimOptions":Landroid/os/Bundle;
    :cond_17
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/ActivityRecord;->applyOptionsLocked()V

    .end local v28    # "opts":Landroid/app/ActivityOptions;
    :goto_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->getLastStack()Lcom/android/server/am/ActivityStack;

    move-result-object v22

    .local v22, "lastStack":Lcom/android/server/am/ActivityStack;
    move-object/from16 v0, v24

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_35

    move-object/from16 v0, v24

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_35

    if-eqz v22, :cond_2c

    move-object/from16 v0, v22

    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mFullscreen:Z

    if-eqz v3, :cond_2a

    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_2b

    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    xor-int/lit8 v17, v3, 0x1

    :goto_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    :try_start_1
    move-object/from16 v0, v24

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v3, :cond_18

    move-object/from16 v0, v24

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->stopped:Z

    if-nez v3, :cond_18

    if-eqz v17, :cond_19

    :cond_18
    const/4 v3, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityRecord;->setVisibility(Z)V

    :cond_19
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/ActivityRecord;->startLaunchTickingLocked()V

    if-nez v22, :cond_2d

    const/16 v20, 0x0

    :goto_c
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v23, v0

    .local v23, "lastState":Lcom/android/server/am/ActivityStack$ActivityState;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->updateCpuStats()V

    const-string/jumbo v3, "resumeTopActivityInnerLocked"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v3}, Lcom/android/server/am/ActivityStack;->setResumedActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v6, v7}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->updateLRUListLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    const/16 v27, 0x1

    .local v27, "notUpdated":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v3

    if-eqz v3, :cond_1c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mKeyguardController:Lcom/android/server/am/KeyguardController;

    invoke-virtual {v3}, Lcom/android/server/am/KeyguardController;->isKeyguardLocked()Z

    move-result v3

    if-eqz v3, :cond_1a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v6, v7}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    :cond_1a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    invoke-virtual {v3, v6}, Lcom/android/server/am/ActivityStackSupervisor;->getDisplayOverrideConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v6

    move-object/from16 v0, v24

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityRecord;->mayFreezeScreenLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v3

    if-eqz v3, :cond_2e

    move-object/from16 v0, v24

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    :goto_d
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    invoke-virtual {v5, v6, v3, v7}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;I)Landroid/content/res/Configuration;

    move-result-object v12

    .local v12, "config":Landroid/content/res/Configuration;
    if-eqz v12, :cond_1b

    const/4 v3, 0x1

    move-object/from16 v0, v24

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->frozenBeforeDestroy:Z

    :cond_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    const/4 v6, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v3, v12, v0, v6, v5}, Lcom/android/server/am/ActivityManagerService;->updateDisplayOverrideConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;ZI)Z

    move-result v3

    xor-int/lit8 v27, v3, 0x1

    .end local v12    # "config":Landroid/content/res/Configuration;
    .end local v27    # "notUpdated":Z
    :cond_1c
    if-eqz v27, :cond_2f

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v25

    .local v25, "nextNext":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_1d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleResumeTopActivities()V

    :cond_1d
    move-object/from16 v0, v24

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v3, :cond_1e

    move-object/from16 v0, v24

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->stopped:Z

    if-eqz v3, :cond_1f

    :cond_1e
    const/4 v3, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityRecord;->setVisibility(Z)V

    :cond_1f
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/ActivityRecord;->completeResumeLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x1

    monitor-exit v4

    return v3

    .end local v11    # "anim":Z
    .end local v22    # "lastStack":Lcom/android/server/am/ActivityStack;
    .end local v23    # "lastState":Lcom/android/server/am/ActivityStack$ActivityState;
    .end local v25    # "nextNext":Lcom/android/server/am/ActivityRecord;
    :cond_20
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_16

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityRecord;->setVisibility(Z)V

    goto/16 :goto_6

    :catch_0
    move-exception v14

    .local v14, "e":Ljava/lang/IllegalArgumentException;
    sget-object v3, Lcom/android/server/am/ActivityStack;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed trying to unstop package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .end local v14    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v11    # "anim":Z
    :cond_21
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v5

    if-ne v3, v5, :cond_22

    const/4 v3, 0x7

    :goto_e
    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    goto/16 :goto_8

    :cond_22
    const/16 v3, 0x9

    goto :goto_e

    :cond_23
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    goto/16 :goto_9

    :cond_24
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v5

    if-ne v3, v5, :cond_25

    const/4 v3, 0x6

    :goto_f
    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    goto/16 :goto_9

    :cond_25
    move-object/from16 v0, v24

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v3, :cond_26

    const/16 v3, 0x10

    goto :goto_f

    :cond_26
    const/16 v3, 0x8

    goto :goto_f

    :cond_27
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    goto/16 :goto_9

    :cond_28
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    goto/16 :goto_9

    .restart local v31    # "resumeAnimOptions":Landroid/os/Bundle;
    :cond_29
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/ActivityRecord;->clearOptionsLocked()V

    goto/16 :goto_a

    .end local v31    # "resumeAnimOptions":Landroid/os/Bundle;
    .restart local v22    # "lastStack":Lcom/android/server/am/ActivityStack;
    :cond_2a
    const/16 v17, 0x1

    .local v17, "lastActivityTranslucent":Z
    goto/16 :goto_b

    .end local v17    # "lastActivityTranslucent":Z
    :cond_2b
    const/16 v17, 0x0

    .restart local v17    # "lastActivityTranslucent":Z
    goto/16 :goto_b

    .end local v17    # "lastActivityTranslucent":Z
    :cond_2c
    const/16 v17, 0x0

    .restart local v17    # "lastActivityTranslucent":Z
    goto/16 :goto_b

    .end local v17    # "lastActivityTranslucent":Z
    :cond_2d
    :try_start_2
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v20, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .local v20, "lastResumedActivity":Lcom/android/server/am/ActivityRecord;
    goto/16 :goto_c

    .end local v20    # "lastResumedActivity":Lcom/android/server/am/ActivityRecord;
    .restart local v23    # "lastState":Lcom/android/server/am/ActivityStack$ActivityState;
    .restart local v27    # "notUpdated":Z
    :cond_2e
    const/4 v3, 0x0

    goto/16 :goto_d

    .end local v27    # "notUpdated":Z
    :cond_2f
    :try_start_3
    move-object/from16 v0, v24

    iget-object v10, v0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    .local v10, "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    if-eqz v10, :cond_30

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v9

    .local v9, "N":I
    move-object/from16 v0, v24

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v3, :cond_30

    if-lez v9, :cond_30

    move-object/from16 v0, v24

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v3, v5, v10}, Landroid/app/IApplicationThread;->scheduleSendResult(Landroid/os/IBinder;Ljava/util/List;)V

    .end local v9    # "N":I
    :cond_30
    move-object/from16 v0, v24

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    if-eqz v3, :cond_31

    move-object/from16 v0, v24

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    move-object/from16 v0, v24

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v7, 0x0

    invoke-interface {v3, v5, v6, v7}, Landroid/app/IApplicationThread;->scheduleNewIntent(Ljava/util/List;Landroid/os/IBinder;Z)V

    :cond_31
    move-object/from16 v0, v24

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->stopped:Z

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityRecord;->notifyAppResumed(Z)V

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    move-object/from16 v0, v24

    iget v5, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v3, v6

    invoke-static/range {v24 .. v24}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v3, v6

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v5

    iget v5, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v3, v6

    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    const/4 v6, 0x3

    aput-object v5, v3, v6

    const/16 v5, 0x7537

    invoke-static {v5, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    const/4 v3, 0x0

    move-object/from16 v0, v24

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityManagerService;->showUnsupportedZoomDialogIfNeededLocked(Lcom/android/server/am/ActivityRecord;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityManagerService;->showAskCompatModeDialogLocked(Lcom/android/server/am/ActivityRecord;)V

    move-object/from16 v0, v24

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v5, 0x1

    iput-boolean v5, v3, Lcom/android/server/am/ProcessRecord;->pendingUiClean:Z

    move-object/from16 v0, v24

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v5, v5, Lcom/android/server/am/ActivityManagerService;->mTopProcessState:I

    invoke-virtual {v3, v5}, Lcom/android/server/am/ProcessRecord;->forceProcessStateUpTo(I)V

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/ActivityRecord;->clearOptionsLocked()V

    move-object/from16 v0, v24

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, v24

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v6, v6, Lcom/android/server/am/ProcessRecord;->repProcState:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->isNextTransitionForward()Z

    move-result v7

    move-object/from16 v0, v31

    invoke-interface {v3, v5, v6, v7, v0}, Landroid/app/IApplicationThread;->scheduleResumeActivity(Landroid/os/IBinder;IZLandroid/os/Bundle;)V

    move-object/from16 v0, v24

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-static {v3}, Lcom/android/server/am/PreventRunningUtils;->onResumeActivity(Landroid/os/IBinder;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v4

    :try_start_4
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/ActivityRecord;->completeResumeLocked()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .end local v10    # "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    .end local v23    # "lastState":Lcom/android/server/am/ActivityStack$ActivityState;
    :goto_10
    const/4 v3, 0x1

    return v3

    .restart local v23    # "lastState":Lcom/android/server/am/ActivityStack$ActivityState;
    :catch_1
    move-exception v13

    .local v13, "e":Ljava/lang/Exception;
    :try_start_5
    move-object/from16 v0, v23

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eqz v22, :cond_32

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    :cond_32
    sget-object v3, Lcom/android/server/am/ActivityStack;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Restarting because process died: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v24

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    if-nez v3, :cond_34

    const/4 v3, 0x1

    move-object/from16 v0, v24

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    :cond_33
    :goto_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v3, v0, v5, v6}, Lcom/android/server/am/ActivityStackSupervisor;->startSpecificActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v3, 0x1

    monitor-exit v4

    return v3

    :cond_34
    if-eqz v22, :cond_33

    :try_start_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStackOnDisplay(Lcom/android/server/am/ActivityStack;)Z

    move-result v3

    if-eqz v3, :cond_33

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v5, v6}, Lcom/android/server/am/ActivityRecord;->showStartingWindow(Lcom/android/server/am/ActivityRecord;ZZ)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_11

    .end local v13    # "e":Ljava/lang/Exception;
    .end local v23    # "lastState":Lcom/android/server/am/ActivityStack$ActivityState;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v10    # "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    .restart local v23    # "lastState":Lcom/android/server/am/ActivityStack$ActivityState;
    :catch_2
    move-exception v13

    .restart local v13    # "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/am/ActivityStack;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception thrown during resume of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const-string/jumbo v7, "resume-exception"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x1

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    const/4 v3, 0x1

    return v3

    .end local v10    # "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    .end local v13    # "e":Ljava/lang/Exception;
    .end local v23    # "lastState":Lcom/android/server/am/ActivityStack$ActivityState;
    :cond_35
    move-object/from16 v0, v24

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    if-nez v3, :cond_36

    const/4 v3, 0x1

    move-object/from16 v0, v24

    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    :goto_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/am/ActivityStackSupervisor;->startSpecificActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    goto/16 :goto_10

    :cond_36
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/server/am/ActivityRecord;->showStartingWindow(Lcom/android/server/am/ActivityRecord;ZZ)V

    goto :goto_12

    .end local v11    # "anim":Z
    .end local v22    # "lastStack":Lcom/android/server/am/ActivityStack;
    :catch_3
    move-exception v15

    .local v15, "e1":Landroid/os/RemoteException;
    goto/16 :goto_7
.end method

.method private schedulePauseTimeout(Lcom/android/server/am/ActivityRecord;)V
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/android/server/am/ActivityRecord;->pauseTime:J

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private startLaunchTraces(Ljava/lang/String;)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const-wide/16 v6, 0x40

    const/4 v4, 0x0

    iget-wide v0, p0, Lcom/android/server/am/ActivityStack;->mFullyDrawnStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const-string/jumbo v0, "drawing"

    invoke-static {v6, v7, v0, v4}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "launching: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v7, v0, v4}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    const-string/jumbo v0, "drawing"

    invoke-static {v6, v7, v0, v4}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    return-void
.end method

.method private stopFullyDrawnTraceIfNeeded()V
    .locals 6

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const-wide/16 v4, 0x0

    iget-wide v0, p0, Lcom/android/server/am/ActivityStack;->mFullyDrawnStartTime:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/am/ActivityStack;->mLaunchStartTime:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    const-string/jumbo v0, "drawing"

    const-wide/16 v2, 0x40

    const/4 v1, 0x0

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    iput-wide v4, p0, Lcom/android/server/am/ActivityStack;->mFullyDrawnStartTime:J

    :cond_0
    return-void
.end method

.method private topRunningActivityLocked(Z)Lcom/android/server/am/ActivityRecord;
    .locals 4
    .param p1, "focusableOnly"    # Z

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "taskNdx":I
    :goto_0
    if-ltz v1, :cond_2

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->isFocusable()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    return-object v0

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2
    return-object v3
.end method

.method private updateBehindFullscreen(ZZLcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;)Z
    .locals 1
    .param p1, "stackInvisible"    # Z
    .param p2, "behindFullscreenActivity"    # Z
    .param p3, "task"    # Lcom/android/server/am/TaskRecord;
    .param p4, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-boolean v0, p4, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v0, :cond_1

    const/4 p2, 0x1

    .end local p2    # "behindFullscreenActivity":Z
    :cond_0
    :goto_0
    return p2

    .restart local p2    # "behindFullscreenActivity":Z
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isHomeOrRecentsStack()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p4, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p2, 0x1

    .local p2, "behindFullscreenActivity":Z
    goto :goto_0
.end method

.method private updateTaskMovement(Lcom/android/server/am/TaskRecord;Z)V
    .locals 4
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "toFront"    # Z

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-boolean v0, p1, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    if-nez p2, :cond_0

    iget-wide v0, p1, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    const-wide/16 v2, -0x1

    mul-long/2addr v0, v2

    iput-wide v0, p1, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->invalidateTaskLayers()V

    return-void
.end method

.method private updateTaskReturnToForTopInsertion(Lcom/android/server/am/TaskRecord;)V
    .locals 7
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v1, 0x0

    .local v1, "isLastTaskOverHome":Z
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->isOverAssistantStack()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStack;->getNextTask(Lcom/android/server/am/TaskRecord;)Lcom/android/server/am/TaskRecord;

    move-result-object v3

    .local v3, "nextTask":Lcom/android/server/am/TaskRecord;
    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .end local v3    # "nextTask":Lcom/android/server/am/TaskRecord;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    move-result v6

    if-nez v6, :cond_3

    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    return-void

    .restart local v3    # "nextTask":Lcom/android/server/am/TaskRecord;
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .end local v3    # "nextTask":Lcom/android/server/am/TaskRecord;
    :cond_3
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStackSupervisor;->getLastStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    .local v2, "lastStack":Lcom/android/server/am/ActivityStack;
    if-nez v2, :cond_4

    return-void

    :cond_4
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isAssistantStack()Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x3

    invoke-virtual {p1, v6}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    return-void

    :cond_5
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isHomeOrRecentsStack()Z

    move-result v0

    .local v0, "fromHomeOrRecents":Z
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v5

    .local v5, "topTask":Lcom/android/server/am/TaskRecord;
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isHomeOrRecentsStack()Z

    move-result v6

    if-nez v6, :cond_8

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v6

    if-eq v6, p1, :cond_8

    :cond_6
    if-eqz v1, :cond_9

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    move-result v4

    .local v4, "returnToType":I
    :goto_1
    if-eqz v0, :cond_7

    iget v6, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-static {v6}, Landroid/app/ActivityManager$StackId;->allowTopTaskToReturnHome(I)Z

    move-result v6

    if-eqz v6, :cond_7

    if-nez v5, :cond_a

    const/4 v4, 0x1

    :cond_7
    :goto_2
    invoke-virtual {p1, v4}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .end local v4    # "returnToType":I
    :cond_8
    return-void

    :cond_9
    const/4 v4, 0x0

    .restart local v4    # "returnToType":I
    goto :goto_1

    :cond_a
    iget v4, v5, Lcom/android/server/am/TaskRecord;->taskType:I

    goto :goto_2
.end method

.method private updateTransitLocked(ILandroid/app/ActivityOptions;)V
    .locals 3
    .param p1, "transit"    # I
    .param p2, "options"    # Landroid/app/ActivityOptions;

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v1, v2, :cond_1

    invoke-virtual {v0, p2}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    return-void

    .restart local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    invoke-static {p2}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    goto :goto_0
.end method


# virtual methods
.method final activityDestroyedLocked(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, "origId":J
    :try_start_0
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x66

    invoke-virtual {v3, v4, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/am/ActivityStack;->cleanUpActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    invoke-direct {p0, v2, p2}, Lcom/android/server/am/ActivityStack;->removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    :cond_1
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method final activityPausedLocked(Landroid/os/IBinder;Z)V
    .locals 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "timeout"    # Z

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, v1, v2}, Lcom/android/server/am/ActivityStack;->completePauseLocked(ZLcom/android/server/am/ActivityRecord;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v1

    :cond_0
    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/Object;

    iget v1, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v4

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v1, v2, v6

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    :goto_0
    const/4 v3, 0x3

    aput-object v1, v2, v3

    const/16 v1, 0x753c

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v1, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    iget-boolean v1, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0, v6, v4}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;

    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, v5, v4, v4}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    return-void

    :cond_2
    const-string/jumbo v1, "(none)"

    goto :goto_0
.end method

.method addRecentActivityLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .local v0, "task":Lcom/android/server/am/TaskRecord;
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-virtual {v1, v0}, Lcom/android/server/am/RecentTasks;->addLocked(Lcom/android/server/am/TaskRecord;)V

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    .end local v0    # "task":Lcom/android/server/am/TaskRecord;
    :cond_0
    return-void
.end method

.method addStartingWindowsForVisibleActivities(Z)V
    .locals 2
    .param p1, "taskSwitch"    # Z

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "taskNdx":I
    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v1, p1}, Lcom/android/server/am/TaskRecord;->addStartingWindowsForVisibleActivities(Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method addTask(Lcom/android/server/am/TaskRecord;IZLjava/lang/String;)V
    .locals 3
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "position"    # I
    .param p3, "schedulePictureInPictureModeChange"    # Z
    .param p4, "reason"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/am/ActivityStack;->getAdjustedPositionForTask(Lcom/android/server/am/TaskRecord;ILcom/android/server/am/ActivityRecord;)I

    move-result p2

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt p2, v2, :cond_1

    const/4 v1, 0x1

    .local v1, "toTop":Z
    :goto_0
    invoke-direct {p0, p1, p4, v1}, Lcom/android/server/am/ActivityStack;->preAddTask(Lcom/android/server/am/TaskRecord;Ljava/lang/String;Z)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .local v0, "prevStack":Lcom/android/server/am/ActivityStack;
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {p1, p0}, Lcom/android/server/am/TaskRecord;->setStack(Lcom/android/server/am/ActivityStack;)V

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStack;->updateTaskReturnToForTopInsertion(Lcom/android/server/am/TaskRecord;)V

    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/android/server/am/ActivityStack;->updateTaskMovement(Lcom/android/server/am/TaskRecord;Z)V

    invoke-direct {p0, p1, v0, p3}, Lcom/android/server/am/ActivityStack;->postAddTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityStack;Z)V

    return-void

    .end local v0    # "prevStack":Lcom/android/server/am/ActivityStack;
    .end local v1    # "toTop":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "toTop":Z
    goto :goto_0
.end method

.method addTask(Lcom/android/server/am/TaskRecord;ZLjava/lang/String;)V
    .locals 3
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "toTop"    # Z
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v2, 0x1

    if-eqz p2, :cond_1

    const v0, 0x7fffffff

    :goto_0
    invoke-virtual {p0, p1, v0, v2, p3}, Lcom/android/server/am/ActivityStack;->addTask(Lcom/android/server/am/TaskRecord;IZLjava/lang/String;)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getWindowContainerController()Lcom/android/server/wm/TaskWindowContainerController;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/StackWindowController;->positionChildAtTop(Lcom/android/server/wm/TaskWindowContainerController;Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method addToStopping(Lcom/android/server/am/ActivityRecord;ZZ)V
    .locals 3
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "scheduleIdle"    # Z
    .param p3, "idleDelayed"    # Z

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x3

    if-gt v1, v2, :cond_2

    iget-boolean v1, p1, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_3

    const/4 v0, 0x1

    .local v0, "forceIdle":Z
    :goto_0
    if-nez p2, :cond_1

    if-eqz v0, :cond_5

    :cond_1
    if-nez p3, :cond_4

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleLocked()V

    :goto_1
    return-void

    .end local v0    # "forceIdle":Z
    :cond_2
    const/4 v0, 0x1

    .restart local v0    # "forceIdle":Z
    goto :goto_0

    .end local v0    # "forceIdle":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "forceIdle":Z
    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleTimeoutLocked(Lcom/android/server/am/ActivityRecord;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->checkReadyForSleep()V

    goto :goto_1
.end method

.method awakeFromSleepingLocked()V
    .locals 5

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v4, 0x0

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "taskNdx":I
    :goto_0
    if-ltz v2, :cond_1

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    iget-object v0, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "activityNdx":I
    :goto_1
    if-ltz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityRecord;->setSleeping(Z)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_2

    sget-object v3, Lcom/android/server/am/ActivityStack;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "awakeFromSleepingLocked: previously pausing activity didn\'t pause"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/android/server/am/ActivityStack;->activityPausedLocked(Landroid/os/IBinder;Z)V

    :cond_2
    return-void
.end method

.method final bottomTask()Lcom/android/server/am/TaskRecord;
    .locals 2

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    return-object v0
.end method

.method cancelInitializingActivities()V
    .locals 8

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    .local v6, "topActivity":Lcom/android/server/am/ActivityRecord;
    const/4 v0, 0x1

    .local v0, "aboveTop":Z
    const/4 v3, 0x0

    .local v3, "behindFullscreenActivity":Z
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/android/server/am/ActivityStack;->shouldBeVisible(Lcom/android/server/am/ActivityRecord;)I

    move-result v7

    if-nez v7, :cond_0

    const/4 v0, 0x0

    const/4 v3, 0x1

    :cond_0
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v5, v7, -0x1

    .end local v3    # "behindFullscreenActivity":Z
    .local v5, "taskNdx":I
    :goto_0
    if-ltz v5, :cond_4

    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/TaskRecord;

    iget-object v1, v7, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .local v1, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    .local v2, "activityNdx":I
    :goto_1
    if-ltz v2, :cond_3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_2

    if-ne v4, v6, :cond_1

    const/4 v0, 0x0

    :cond_1
    iget-boolean v7, v4, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    or-int/2addr v3, v7

    .local v3, "behindFullscreenActivity":Z
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .end local v3    # "behindFullscreenActivity":Z
    :cond_2
    invoke-virtual {v4, v3}, Lcom/android/server/am/ActivityRecord;->removeOrphanedStartingWindow(Z)V

    iget-boolean v7, v4, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    or-int/2addr v3, v7

    .restart local v3    # "behindFullscreenActivity":Z
    goto :goto_2

    .end local v3    # "behindFullscreenActivity":Z
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_3
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .end local v1    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v2    # "activityNdx":I
    :cond_4
    return-void
.end method

.method checkKeyguardVisibility(Lcom/android/server/am/ActivityRecord;ZZ)Z
    .locals 10
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "shouldBeVisible"    # Z
    .param p3, "isTop"    # Z

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v6

    const/4 v8, 0x4

    if-ne v6, v8, :cond_2

    const/4 v2, 0x1

    .local v2, "isInPinnedStack":Z
    :goto_0
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v8, v6, Lcom/android/server/am/ActivityStackSupervisor;->mKeyguardController:Lcom/android/server/am/KeyguardController;

    iget v6, p0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    const/4 v9, -0x1

    if-eq v6, v9, :cond_3

    iget v6, p0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    :goto_1
    invoke-virtual {v8, v6}, Lcom/android/server/am/KeyguardController;->isKeyguardShowing(I)Z

    move-result v4

    .local v4, "keyguardShowing":Z
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v6, v6, Lcom/android/server/am/ActivityStackSupervisor;->mKeyguardController:Lcom/android/server/am/KeyguardController;

    invoke-virtual {v6}, Lcom/android/server/am/KeyguardController;->isKeyguardLocked()Z

    move-result v3

    .local v3, "keyguardLocked":Z
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->canShowWhenLocked()Z

    move-result v6

    if-eqz v6, :cond_4

    xor-int/lit8 v5, v2, 0x1

    :goto_2
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->hasDismissKeyguardWindows()Z

    move-result v1

    .local v1, "dismissKeyguard":Z
    if-eqz p2, :cond_6

    if-eqz v1, :cond_0

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mTopDismissingKeyguardActivity:Lcom/android/server/am/ActivityRecord;

    if-nez v6, :cond_0

    iput-object p1, p0, Lcom/android/server/am/ActivityStack;->mTopDismissingKeyguardActivity:Lcom/android/server/am/ActivityRecord;

    :cond_0
    if-eqz p3, :cond_1

    iget-boolean v6, p0, Lcom/android/server/am/ActivityStack;->mTopActivityOccludesKeyguard:Z

    or-int/2addr v6, v5

    iput-boolean v6, p0, Lcom/android/server/am/ActivityStack;->mTopActivityOccludesKeyguard:Z

    :cond_1
    invoke-direct {p0}, Lcom/android/server/am/ActivityStack;->canShowWithInsecureKeyguard()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v6, v6, Lcom/android/server/am/ActivityStackSupervisor;->mKeyguardController:Lcom/android/server/am/KeyguardController;

    invoke-virtual {v6}, Lcom/android/server/am/KeyguardController;->canDismissKeyguard()Z

    move-result v0

    :goto_3
    if-eqz v0, :cond_6

    const/4 v6, 0x1

    return v6

    .end local v1    # "dismissKeyguard":Z
    .end local v2    # "isInPinnedStack":Z
    .end local v3    # "keyguardLocked":Z
    .end local v4    # "keyguardShowing":Z
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "isInPinnedStack":Z
    goto :goto_0

    :cond_3
    move v6, v7

    goto :goto_1

    .restart local v3    # "keyguardLocked":Z
    .restart local v4    # "keyguardShowing":Z
    :cond_4
    const/4 v5, 0x0

    .local v5, "showWhenLocked":Z
    goto :goto_2

    .end local v5    # "showWhenLocked":Z
    .restart local v1    # "dismissKeyguard":Z
    :cond_5
    const/4 v0, 0x0

    .local v0, "canShowWithKeyguard":Z
    goto :goto_3

    .end local v0    # "canShowWithKeyguard":Z
    :cond_6
    if-eqz v4, :cond_8

    if-eqz p2, :cond_7

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v6, v6, Lcom/android/server/am/ActivityStackSupervisor;->mKeyguardController:Lcom/android/server/am/KeyguardController;

    invoke-virtual {v6, p1, v1}, Lcom/android/server/am/KeyguardController;->canShowActivityWhileKeyguardShowing(Lcom/android/server/am/ActivityRecord;Z)Z

    move-result v7

    :cond_7
    return v7

    :cond_8
    if-eqz v3, :cond_a

    if-eqz p2, :cond_9

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v6, v6, Lcom/android/server/am/ActivityStackSupervisor;->mKeyguardController:Lcom/android/server/am/KeyguardController;

    invoke-virtual {v6, v1, v5}, Lcom/android/server/am/KeyguardController;->canShowWhileOccluded(ZZ)Z

    move-result v7

    :cond_9
    return v7

    :cond_a
    return p2
.end method

.method checkReadyForSleep()V
    .locals 2

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->shouldSleepActivities()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStack;->goToSleepIfPossible(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked(Z)V

    :cond_0
    return-void
.end method

.method clearOtherAppTimeTrackers(Lcom/android/server/am/AppTimeTracker;)V
    .locals 6
    .param p1, "except"    # Lcom/android/server/am/AppTimeTracker;

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    .local v4, "taskNdx":I
    :goto_0
    if-ltz v4, :cond_2

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .local v3, "task":Lcom/android/server/am/TaskRecord;
    iget-object v0, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "activityNdx":I
    :goto_1
    if-ltz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    if-eq v5, p1, :cond_0

    const/4 v5, 0x0

    iput-object v5, v2, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    :cond_2
    return-void
.end method

.method closeSystemDialogsLocked()V
    .locals 9

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v8, v0, -0x1

    .local v8, "taskNdx":I
    :goto_0
    if-ltz v8, :cond_2

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    iget-object v6, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .local v6, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v7, v0, -0x1

    .local v7, "activityNdx":I
    :goto_1
    if-ltz v7, :cond_1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const-string/jumbo v4, "close-sys"

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    :cond_0
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .end local v6    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v7    # "activityNdx":I
    :cond_2
    return-void
.end method

.method continueUpdateBounds()V
    .locals 5

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/server/am/ActivityStack;->mUpdateBoundsDeferred:Z

    .local v0, "wasDeferred":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/ActivityStack;->mUpdateBoundsDeferred:Z

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/server/am/ActivityStack;->mUpdateBoundsDeferredCalled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mDeferredBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v2

    :goto_0
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mDeferredTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v2

    :goto_1
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mDeferredTaskInsetBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_2
    invoke-virtual {p0, v1, v3, v2}, Lcom/android/server/am/ActivityStack;->resize(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mDeferredBounds:Landroid/graphics/Rect;

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mDeferredTaskBounds:Landroid/graphics/Rect;

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mDeferredTaskInsetBounds:Landroid/graphics/Rect;

    goto :goto_2
.end method

.method convertActivityToTranslucent(Lcom/android/server/am/ActivityRecord;)V
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iput-object p1, p0, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6a

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method createStackWindowController(IZLandroid/graphics/Rect;)Lcom/android/server/wm/StackWindowController;
    .locals 6
    .param p1, "displayId"    # I
    .param p2, "onTop"    # Z
    .param p3, "outBounds"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Landroid/graphics/Rect;",
            ")TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    new-instance v0, Lcom/android/server/wm/StackWindowController;

    iget v1, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/StackWindowController;-><init>(ILcom/android/server/wm/StackWindowListener;IZLandroid/graphics/Rect;)V

    return-object v0
.end method

.method createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ZI)Lcom/android/server/am/TaskRecord;
    .locals 9
    .param p1, "taskId"    # I
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p5, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p6, "toTop"    # Z
    .param p7, "type"    # I

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    new-instance v0, Lcom/android/server/am/TaskRecord;

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/TaskRecord;-><init>(Lcom/android/server/am/ActivityManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;I)V

    .local v0, "task":Lcom/android/server/am/TaskRecord;
    const-string/jumbo v1, "createTaskRecord"

    invoke-virtual {p0, v0, p6, v1}, Lcom/android/server/am/ActivityStack;->addTask(Lcom/android/server/am/TaskRecord;ZLjava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v1, Lcom/android/server/am/ActivityStackSupervisor;->mKeyguardController:Lcom/android/server/am/KeyguardController;

    iget v1, p0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    iget v1, p0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    :goto_0
    invoke-virtual {v2, v1}, Lcom/android/server/am/KeyguardController;->isKeyguardShowing(I)Z

    move-result v8

    .local v8, "isLockscreenShown":Z
    iget-object v1, p2, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/ActivityStack;->layoutTaskInStack(Lcom/android/server/am/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v1

    if-eqz v1, :cond_0

    xor-int/lit8 v1, v8, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Z

    :cond_0
    iget v1, p2, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, p6, v1}, Lcom/android/server/am/TaskRecord;->createWindowContainer(ZZ)V

    return-object v0

    .end local v8    # "isLockscreenShown":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .restart local v8    # "isLockscreenShown":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method deferScheduleMultiWindowModeChanged()Z
    .locals 1

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method deferUpdateBounds()V
    .locals 1

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStack;->mUpdateBoundsDeferred:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStack;->mUpdateBoundsDeferred:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStack;->mUpdateBoundsDeferredCalled:Z

    :cond_0
    return-void
.end method

.method final destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z
    .locals 11
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "removeFromApp"    # Z
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v6

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    const/4 v7, 0x3

    aput-object v6, v5, v7

    const/4 v6, 0x4

    aput-object p3, v5, v6

    const/16 v6, 0x7542

    invoke-static {v6, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    const/4 v3, 0x0

    .local v3, "removedFromHistory":Z
    invoke-direct {p0, p1, v9, v9}, Lcom/android/server/am/ActivityStack;->cleanUpActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_4

    const/4 v1, 0x1

    .local v1, "hadApp":Z
    :goto_0
    if-eqz v1, :cond_6

    if-eqz p2, :cond_1

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v5, v6, :cond_0

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gtz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v10, v5, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v6, 0x19

    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendEmptyMessage(I)Z

    :cond_0
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v5, v6}, Lcom/android/server/am/ActiveServices;->updateServiceConnectionActivitiesLocked(Lcom/android/server/am/ProcessRecord;)V

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v5, v6, v9, v10}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    :cond_1
    const/4 v4, 0x0

    .local v4, "skipDestroy":Z
    :try_start_0
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-boolean v7, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    iget v8, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    invoke-interface {v5, v6, v7, v8}, Landroid/app/IApplicationThread;->scheduleDestroyActivity(Landroid/os/IBinder;ZI)V

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-static {v5}, Lcom/android/server/am/PreventRunningUtils;->onDestroyActivity(Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    iput-boolean v9, p1, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    iget-boolean v5, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_5

    xor-int/lit8 v5, v4, 0x1

    if-eqz v5, :cond_5

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v5, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x66

    invoke-virtual {v5, v6, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .local v2, "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x2710

    invoke-virtual {v5, v2, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .end local v2    # "msg":Landroid/os/Message;
    .end local v4    # "skipDestroy":Z
    :goto_2
    iput v9, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    if-eqz v1, :cond_3

    sget-object v5, Lcom/android/server/am/ActivityStack;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Activity "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " being finished, but not in LRU list"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v3

    .end local v1    # "hadApp":Z
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "hadApp":Z
    goto/16 :goto_0

    .restart local v4    # "skipDestroy":Z
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    iget-boolean v5, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " exceptionInScheduleDestroy"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Lcom/android/server/am/ActivityStack;->removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    const/4 v3, 0x1

    const/4 v4, 0x1

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v5, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v10, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    goto :goto_2

    .end local v4    # "skipDestroy":Z
    :cond_6
    iget-boolean v5, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " hadNoApp"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Lcom/android/server/am/ActivityStack;->removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    const/4 v3, 0x1

    goto :goto_2

    :cond_7
    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v5, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v10, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    goto :goto_2
.end method

.method dumpActivitiesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;ZLjava/lang/String;)Z
    .locals 15
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "dumpAll"    # Z
    .param p4, "dumpClient"    # Z
    .param p5, "dumpPackage"    # Ljava/lang/String;
    .param p6, "needSep"    # Z
    .param p7, "header"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v12, 0x0

    .local v12, "printed":Z
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v14, v0, -0x1

    .end local v12    # "printed":Z
    .end local p7    # "header":Ljava/lang/String;
    .local v14, "taskNdx":I
    :goto_0
    if-ltz v14, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/TaskRecord;

    .local v13, "task":Lcom/android/server/am/TaskRecord;
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    const-string/jumbo v3, "    "

    const-string/jumbo v4, "Hist"

    xor-int/lit8 v6, p3, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "    Task id #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v13, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "    mFullscreen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, v13, Lcom/android/server/am/TaskRecord;->mFullscreen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "    mBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v13, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "    mMinWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v13, Lcom/android/server/am/TaskRecord;->mMinWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "    mMinHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v13, Lcom/android/server/am/TaskRecord;->mMinHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "    mLastNonFullscreenBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v13, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v5, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-static/range {v0 .. v11}, Lcom/android/server/am/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    or-int/2addr v12, v0

    .local v12, "printed":Z
    if-eqz v12, :cond_0

    const/16 p7, 0x0

    :cond_0
    add-int/lit8 v14, v14, -0x1

    goto/16 :goto_0

    .end local v12    # "printed":Z
    .end local v13    # "task":Lcom/android/server/am/TaskRecord;
    :cond_1
    return v12
.end method

.method final ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V
    .locals 20
    .param p1, "starting"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "configChanges"    # I
    .param p3, "preserveWindows"    # Z

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mTopActivityOccludesKeyguard:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/am/ActivityStack;->mTopDismissingKeyguardActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mKeyguardController:Lcom/android/server/am/KeyguardController;

    invoke-virtual {v2}, Lcom/android/server/am/KeyguardController;->beginActivityVisibilityUpdate()V

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v18

    .local v18, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/am/ActivityStack;->checkTranslucentActivityWaiting(Lcom/android/server/am/ActivityRecord;)V

    :cond_0
    if-eqz v18, :cond_2

    const/4 v8, 0x1

    .local v8, "aboveTop":Z
    :goto_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActivityStack;->shouldBeVisible(Lcom/android/server/am/ActivityRecord;)I

    move-result v15

    .local v15, "stackVisibility":I
    const/4 v2, 0x1

    if-eq v15, v2, :cond_3

    const/4 v14, 0x1

    .local v14, "stackInvisible":Z
    :goto_1
    move v11, v14

    .local v11, "behindFullscreenActivity":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    if-nez v2, :cond_4

    const/4 v6, 0x1

    .local v6, "resumeNextActivity":Z
    :goto_2
    const/4 v12, 0x0

    .local v12, "behindTranslucentActivity":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v17, v2, -0x1

    .end local v11    # "behindFullscreenActivity":Z
    .local v17, "taskNdx":I
    :goto_3
    if-ltz v17, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/am/TaskRecord;

    .local v16, "task":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, v16

    iget-object v9, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .local v9, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v10, v2, -0x1

    .local v10, "activityNdx":I
    :goto_4
    if-ltz v10, :cond_11

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ActivityRecord;

    .local v7, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v7, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_6

    iget-boolean v2, v7, Lcom/android/server/am/ActivityRecord;->mUpdateTaskThumbnailWhenHidden:Z

    if-eqz v2, :cond_1

    invoke-virtual {v7}, Lcom/android/server/am/ActivityRecord;->screenshotActivityLocked()Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v7, v2, v3}, Lcom/android/server/am/ActivityRecord;->updateThumbnailLocked(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    iput-boolean v2, v7, Lcom/android/server/am/ActivityRecord;->mUpdateTaskThumbnailWhenHidden:Z

    :cond_1
    :goto_5
    add-int/lit8 v10, v10, -0x1

    goto :goto_4

    .end local v6    # "resumeNextActivity":Z
    .end local v7    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v8    # "aboveTop":Z
    .end local v9    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v10    # "activityNdx":I
    .end local v12    # "behindTranslucentActivity":Z
    .end local v14    # "stackInvisible":Z
    .end local v15    # "stackVisibility":I
    .end local v16    # "task":Lcom/android/server/am/TaskRecord;
    .end local v17    # "taskNdx":I
    :cond_2
    const/4 v8, 0x0

    .restart local v8    # "aboveTop":Z
    goto :goto_0

    .restart local v15    # "stackVisibility":I
    :cond_3
    const/4 v14, 0x0

    .restart local v14    # "stackInvisible":Z
    goto :goto_1

    .restart local v11    # "behindFullscreenActivity":Z
    :cond_4
    const/4 v6, 0x0

    .restart local v6    # "resumeNextActivity":Z
    goto :goto_2

    .end local v6    # "resumeNextActivity":Z
    :cond_5
    const/4 v6, 0x0

    .restart local v6    # "resumeNextActivity":Z
    goto :goto_2

    .end local v11    # "behindFullscreenActivity":Z
    .restart local v7    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v9    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v10    # "activityNdx":I
    .restart local v12    # "behindTranslucentActivity":Z
    .restart local v16    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v17    # "taskNdx":I
    :cond_6
    move-object/from16 v0, v18

    if-ne v7, v0, :cond_c

    const/4 v5, 0x1

    .local v5, "isTop":Z
    :goto_6
    if-eqz v8, :cond_7

    xor-int/lit8 v2, v5, 0x1

    if-nez v2, :cond_1

    :cond_7
    const/4 v8, 0x0

    invoke-virtual {v7, v11}, Lcom/android/server/am/ActivityRecord;->shouldBeVisibleIgnoringKeyguard(Z)Z

    move-result v19

    .local v19, "visibleIgnoringKeyguard":Z
    move/from16 v0, v19

    iput-boolean v0, v7, Lcom/android/server/am/ActivityRecord;->visibleIgnoringKeyguard:Z

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v7, v1, v5}, Lcom/android/server/am/ActivityStack;->checkKeyguardVisibility(Lcom/android/server/am/ActivityRecord;ZZ)Z

    move-result v13

    .local v13, "reallyVisible":Z
    if-eqz v19, :cond_8

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v14, v11, v1, v7}, Lcom/android/server/am/ActivityStack;->updateBehindFullscreen(ZZLcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;)Z

    move-result v11

    .restart local v11    # "behindFullscreenActivity":Z
    if-eqz v11, :cond_8

    iget-boolean v2, v7, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_8

    const/4 v12, 0x1

    .end local v11    # "behindFullscreenActivity":Z
    :cond_8
    if-eqz v13, :cond_10

    move-object/from16 v0, p1

    if-eq v7, v0, :cond_9

    const/4 v2, 0x0

    move/from16 v0, p3

    invoke-virtual {v7, v2, v0}, Lcom/android/server/am/ActivityRecord;->ensureActivityConfigurationLocked(IZ)Z

    :cond_9
    iget-object v2, v7, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_a

    iget-object v2, v7, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v2, :cond_e

    :cond_a
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/ActivityStack;->makeVisibleAndRestartIfNeeded(Lcom/android/server/am/ActivityRecord;IZZLcom/android/server/am/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v10, v2, :cond_d

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v10, v2, -0x1

    :cond_b
    :goto_7
    iget v2, v7, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    or-int p2, p2, v2

    goto :goto_5

    .end local v5    # "isTop":Z
    .end local v13    # "reallyVisible":Z
    .end local v19    # "visibleIgnoringKeyguard":Z
    :cond_c
    const/4 v5, 0x0

    .restart local v5    # "isTop":Z
    goto :goto_6

    .restart local v13    # "reallyVisible":Z
    .restart local v19    # "visibleIgnoringKeyguard":Z
    :cond_d
    const/4 v6, 0x0

    goto :goto_7

    :cond_e
    iget-boolean v2, v7, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v2, :cond_f

    invoke-virtual {v7}, Lcom/android/server/am/ActivityRecord;->handleAlreadyVisible()Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v6, 0x0

    goto :goto_7

    :cond_f
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityRecord;->makeVisibleIfNeeded(Lcom/android/server/am/ActivityRecord;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_7

    .end local v5    # "isTop":Z
    .end local v6    # "resumeNextActivity":Z
    .end local v7    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v8    # "aboveTop":Z
    .end local v9    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v10    # "activityNdx":I
    .end local v12    # "behindTranslucentActivity":Z
    .end local v13    # "reallyVisible":Z
    .end local v14    # "stackInvisible":Z
    .end local v15    # "stackVisibility":I
    .end local v16    # "task":Lcom/android/server/am/TaskRecord;
    .end local v17    # "taskNdx":I
    .end local v18    # "top":Lcom/android/server/am/ActivityRecord;
    .end local v19    # "visibleIgnoringKeyguard":Z
    :catchall_0
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mKeyguardController:Lcom/android/server/am/KeyguardController;

    invoke-virtual {v3}, Lcom/android/server/am/KeyguardController;->endActivityVisibilityUpdate()V

    throw v2

    .restart local v5    # "isTop":Z
    .restart local v6    # "resumeNextActivity":Z
    .restart local v7    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v8    # "aboveTop":Z
    .restart local v9    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v10    # "activityNdx":I
    .restart local v12    # "behindTranslucentActivity":Z
    .restart local v13    # "reallyVisible":Z
    .restart local v14    # "stackInvisible":Z
    .restart local v15    # "stackVisibility":I
    .restart local v16    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v17    # "taskNdx":I
    .restart local v18    # "top":Lcom/android/server/am/ActivityRecord;
    .restart local v19    # "visibleIgnoringKeyguard":Z
    :cond_10
    :try_start_1
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/am/ActivityStack;->makeInvisible(Lcom/android/server/am/ActivityRecord;)V

    goto/16 :goto_5

    .end local v5    # "isTop":Z
    .end local v7    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v13    # "reallyVisible":Z
    .end local v19    # "visibleIgnoringKeyguard":Z
    :cond_11
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_14

    if-nez v15, :cond_13

    const/4 v11, 0x1

    :cond_12
    :goto_8
    add-int/lit8 v17, v17, -0x1

    goto/16 :goto_3

    :cond_13
    const/4 v11, 0x0

    .local v11, "behindFullscreenActivity":Z
    goto :goto_8

    .end local v11    # "behindFullscreenActivity":Z
    :cond_14
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    if-nez v2, :cond_16

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/am/TaskRecord;->isHomeTask()Z

    move-result v2

    if-eqz v2, :cond_15

    const/4 v11, 0x1

    .restart local v11    # "behindFullscreenActivity":Z
    goto :goto_8

    .end local v11    # "behindFullscreenActivity":Z
    :cond_15
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/am/TaskRecord;->isRecentsTask()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    move-result v2

    if-nez v2, :cond_12

    const/4 v11, 0x1

    .restart local v11    # "behindFullscreenActivity":Z
    goto :goto_8

    .end local v11    # "behindFullscreenActivity":Z
    :cond_16
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_12

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_12

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    move-result v2

    if-eqz v2, :cond_12

    const/4 v11, 0x1

    .restart local v11    # "behindFullscreenActivity":Z
    goto :goto_8

    .end local v9    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v10    # "activityNdx":I
    .end local v11    # "behindFullscreenActivity":Z
    .end local v16    # "task":Lcom/android/server/am/TaskRecord;
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_18

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStack;->notifyActivityDrawnLocked(Lcom/android/server/am/ActivityRecord;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mKeyguardController:Lcom/android/server/am/KeyguardController;

    invoke-virtual {v2}, Lcom/android/server/am/KeyguardController;->endActivityVisibilityUpdate()V

    return-void
.end method

.method ensureVisibleActivitiesConfigurationLocked(Lcom/android/server/am/ActivityRecord;Z)V
    .locals 10
    .param p1, "start"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "preserveWindow"    # Z

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v9, 0x0

    if-eqz p1, :cond_0

    iget-boolean v8, p1, Lcom/android/server/am/ActivityRecord;->visible:Z

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v4

    .local v4, "startTask":Lcom/android/server/am/TaskRecord;
    const/4 v2, 0x0

    .local v2, "behindFullscreen":Z
    const/4 v7, 0x0

    .local v7, "updatedConfig":Z
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .end local v7    # "updatedConfig":Z
    .local v6, "taskIndex":I
    :goto_0
    if-ltz v6, :cond_3

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    .local v5, "task":Lcom/android/server/am/TaskRecord;
    iget-object v0, v5, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v8

    if-ne v8, v5, :cond_5

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .local v1, "activityIndex":I
    :goto_1
    if-ltz v1, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v3, v9, p2}, Lcom/android/server/am/ActivityRecord;->ensureActivityConfigurationLocked(IZ)Z

    move-result v8

    or-int/2addr v7, v8

    .local v7, "updatedConfig":Z
    iget-boolean v8, v3, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v8, :cond_6

    const/4 v2, 0x1

    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v7    # "updatedConfig":Z
    :cond_2
    if-eqz v2, :cond_7

    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityIndex":I
    .end local v5    # "task":Lcom/android/server/am/TaskRecord;
    :cond_3
    if-eqz v7, :cond_4

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    :cond_4
    return-void

    .restart local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v5    # "task":Lcom/android/server/am/TaskRecord;
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v1, v8, -0x1

    .restart local v1    # "activityIndex":I
    goto :goto_1

    .restart local v3    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v7    # "updatedConfig":Z
    :cond_6
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v7    # "updatedConfig":Z
    :cond_7
    add-int/lit8 v6, v6, -0x1

    goto :goto_0
.end method

.method executeAppTransition(Landroid/app/ActivityOptions;)V
    .locals 1
    .param p1, "options"    # Landroid/app/ActivityOptions;

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-static {p1}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    return-void
.end method

.method findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Z)Lcom/android/server/am/ActivityRecord;
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;
    .param p3, "compareIntentFilters"    # Z

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v9, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .local v2, "cls":Landroid/content/ComponentName;
    iget-object v7, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v7, :cond_0

    new-instance v2, Landroid/content/ComponentName;

    .end local v2    # "cls":Landroid/content/ComponentName;
    iget-object v7, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v2, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v2    # "cls":Landroid/content/ComponentName;
    :cond_0
    iget-object v7, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .local v6, "userId":I
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v5, v7, -0x1

    .local v5, "taskNdx":I
    :goto_0
    if-ltz v5, :cond_5

    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    .local v4, "task":Lcom/android/server/am/TaskRecord;
    iget-object v0, v4, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    .local v1, "activityNdx":I
    :goto_1
    if-ltz v1, :cond_4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->okToShowLocked()Z

    move-result v7

    if-nez v7, :cond_2

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_2
    iget-boolean v7, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v7, :cond_1

    iget v7, v3, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v7, v6, :cond_1

    if-eqz p3, :cond_3

    iget-object v7, v3, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7, p1}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v7

    if-eqz v7, :cond_1

    return-object v3

    :cond_3
    iget-object v7, v3, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    return-object v3

    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_4
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v4    # "task":Lcom/android/server/am/TaskRecord;
    :cond_5
    return-object v9
.end method

.method findNextTranslucentActivity(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 14
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v10

    .local v10, "task":Lcom/android/server/am/TaskRecord;
    if-nez v10, :cond_0

    const/4 v13, 0x0

    return-object v13

    :cond_0
    invoke-virtual {v10}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v8

    .local v8, "stack":Lcom/android/server/am/ActivityStack;
    if-nez v8, :cond_1

    const/4 v13, 0x0

    return-object v13

    :cond_1
    iget-object v13, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    .local v9, "stackNdx":I
    iget-object v12, v8, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    .local v12, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v11

    .local v11, "taskNdx":I
    iget-object v0, v10, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v13

    add-int/lit8 v2, v13, 0x1

    .local v2, "activityNdx":I
    iget-object v13, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v6

    .local v6, "numStacks":I
    :goto_0
    if-ge v9, v6, :cond_6

    iget-object v13, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStack;

    .local v4, "historyStack":Lcom/android/server/am/ActivityStack;
    iget-object v12, v4, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v7

    .local v7, "numTasks":I
    :goto_1
    if-ge v11, v7, :cond_5

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .local v3, "currentTask":Lcom/android/server/am/TaskRecord;
    iget-object v0, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    .local v5, "numActivities":I
    :goto_2
    if-ge v2, v5, :cond_4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .local v1, "activity":Lcom/android/server/am/ActivityRecord;
    iget-boolean v13, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v13, :cond_3

    iget-boolean v13, v4, Lcom/android/server/am/ActivityStack;->mFullscreen:Z

    if-eqz v13, :cond_2

    iget-boolean v13, v3, Lcom/android/server/am/TaskRecord;->mFullscreen:Z

    if-eqz v13, :cond_2

    iget-boolean v13, v1, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v13, :cond_2

    const/4 v1, 0x0

    .end local v1    # "activity":Lcom/android/server/am/ActivityRecord;
    :cond_2
    return-object v1

    .restart local v1    # "activity":Lcom/android/server/am/ActivityRecord;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v1    # "activity":Lcom/android/server/am/ActivityRecord;
    :cond_4
    const/4 v2, 0x0

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .end local v3    # "currentTask":Lcom/android/server/am/TaskRecord;
    .end local v5    # "numActivities":I
    :cond_5
    const/4 v11, 0x0

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .end local v4    # "historyStack":Lcom/android/server/am/ActivityStack;
    .end local v7    # "numTasks":I
    :cond_6
    const/4 v13, 0x0

    return-object v13
.end method

.method findTaskLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;)V
    .locals 16
    .param p1, "target"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "result"    # Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .local v5, "intent":Landroid/content/Intent;
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .local v4, "info":Landroid/content/pm/ActivityInfo;
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .local v2, "cls":Landroid/content/ComponentName;
    iget-object v14, v4, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v14, :cond_0

    new-instance v2, Landroid/content/ComponentName;

    .end local v2    # "cls":Landroid/content/ComponentName;
    iget-object v14, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v15, v4, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v2, v14, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v2    # "cls":Landroid/content/ComponentName;
    :cond_0
    iget-object v14, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v14}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    .local v13, "userId":I
    if-eqz v5, :cond_2

    const/4 v14, 0x1

    :goto_0
    invoke-virtual {v5}, Landroid/content/Intent;->isDocument()Z

    move-result v15

    and-int v6, v14, v15

    .local v6, "isDocument":Z
    if-eqz v6, :cond_3

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v12, v14, -0x1

    .local v12, "taskNdx":I
    :goto_2
    if-ltz v12, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/TaskRecord;

    .local v8, "task":Lcom/android/server/am/TaskRecord;
    iget-object v14, v8, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v14, :cond_4

    :cond_1
    :goto_3
    add-int/lit8 v12, v12, -0x1

    goto :goto_2

    .end local v6    # "isDocument":Z
    .end local v8    # "task":Lcom/android/server/am/TaskRecord;
    .end local v12    # "taskNdx":I
    :cond_2
    const/4 v14, 0x0

    goto :goto_0

    .restart local v6    # "isDocument":Z
    :cond_3
    const/4 v3, 0x0

    .local v3, "documentData":Landroid/net/Uri;
    goto :goto_1

    .end local v3    # "documentData":Landroid/net/Uri;
    .restart local v8    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v12    # "taskNdx":I
    :cond_4
    iget v14, v8, Lcom/android/server/am/TaskRecord;->userId:I

    if-ne v14, v13, :cond_1

    const/4 v14, 0x0

    invoke-virtual {v8, v14}, Lcom/android/server/am/TaskRecord;->getTopActivity(Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    .local v7, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v7, :cond_1

    iget-boolean v14, v7, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v14, :cond_1

    iget v14, v7, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v14, v13, :cond_1

    iget v14, v7, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v15, 0x3

    if-eq v14, v15, :cond_1

    iget v14, v7, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    move-object/from16 v0, p1

    iget v15, v0, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    if-ne v14, v15, :cond_1

    iget-object v10, v8, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    .local v10, "taskIntent":Landroid/content/Intent;
    iget-object v1, v8, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    .local v1, "affinityIntent":Landroid/content/Intent;
    if-eqz v10, :cond_6

    invoke-virtual {v10}, Landroid/content/Intent;->isDocument()Z

    move-result v14

    if-eqz v14, :cond_6

    const/4 v11, 0x1

    .local v11, "taskIsDocument":Z
    invoke-virtual {v10}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    :goto_4
    if-eqz v10, :cond_8

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v14

    if-eqz v14, :cond_8

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v14

    invoke-virtual {v14, v2}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    move-result v14

    if-nez v14, :cond_8

    invoke-static {v3, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    move-object/from16 v0, p2

    iput-object v7, v0, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->r:Lcom/android/server/am/ActivityRecord;

    const/4 v14, 0x0

    move-object/from16 v0, p2

    iput-boolean v14, v0, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->matchedByRootAffinity:Z

    .end local v1    # "affinityIntent":Landroid/content/Intent;
    .end local v7    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v8    # "task":Lcom/android/server/am/TaskRecord;
    .end local v10    # "taskIntent":Landroid/content/Intent;
    .end local v11    # "taskIsDocument":Z
    :cond_5
    :goto_5
    return-void

    .restart local v1    # "affinityIntent":Landroid/content/Intent;
    .restart local v7    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v8    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v10    # "taskIntent":Landroid/content/Intent;
    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/content/Intent;->isDocument()Z

    move-result v14

    if-eqz v14, :cond_7

    const/4 v11, 0x1

    .restart local v11    # "taskIsDocument":Z
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    .local v9, "taskDocumentData":Landroid/net/Uri;
    goto :goto_4

    .end local v9    # "taskDocumentData":Landroid/net/Uri;
    .end local v11    # "taskIsDocument":Z
    :cond_7
    const/4 v11, 0x0

    .restart local v11    # "taskIsDocument":Z
    const/4 v9, 0x0

    .local v9, "taskDocumentData":Landroid/net/Uri;
    goto :goto_4

    .end local v9    # "taskDocumentData":Landroid/net/Uri;
    :cond_8
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v14

    if-eqz v14, :cond_9

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v14

    invoke-virtual {v14, v2}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    move-result v14

    if-nez v14, :cond_9

    invoke-static {v3, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    move-object/from16 v0, p2

    iput-object v7, v0, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->r:Lcom/android/server/am/ActivityRecord;

    const/4 v14, 0x0

    move-object/from16 v0, p2

    iput-boolean v14, v0, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->matchedByRootAffinity:Z

    goto :goto_5

    :cond_9
    if-nez v6, :cond_1

    xor-int/lit8 v14, v11, 0x1

    if-eqz v14, :cond_1

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->r:Lcom/android/server/am/ActivityRecord;

    if-nez v14, :cond_1

    iget-object v14, v8, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    if-eqz v14, :cond_1

    iget-object v14, v8, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    move-object/from16 v0, p2

    iput-object v7, v0, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->r:Lcom/android/server/am/ActivityRecord;

    const/4 v14, 0x1

    move-object/from16 v0, p2

    iput-boolean v14, v0, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->matchedByRootAffinity:Z

    goto/16 :goto_3
.end method

.method final finishActivityAffinityLocked(Lcom/android/server/am/ActivityRecord;)Z
    .locals 8
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v5, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    iget-object v6, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .local v6, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .local v7, "index":I
    :goto_0
    if-ltz v7, :cond_0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .local v1, "cur":Lcom/android/server/am/ActivityRecord;
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    invoke-static {v0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .end local v1    # "cur":Lcom/android/server/am/ActivityRecord;
    :cond_0
    return v5

    .restart local v1    # "cur":Lcom/android/server/am/ActivityRecord;
    :cond_1
    const-string/jumbo v4, "request-affinity"

    const/4 v3, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    add-int/lit8 v7, v7, -0x1

    goto :goto_0
.end method

.method final finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z
    .locals 7
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/content/Intent;
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "oomAdj"    # Z

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;ZZ)Z

    move-result v0

    return v0
.end method

.method final finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;ZZ)Z
    .locals 14
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/content/Intent;
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "oomAdj"    # Z
    .param p6, "pauseImmediately"    # Z

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-boolean v11, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v11, :cond_0

    sget-object v11, Lcom/android/server/am/ActivityStack;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Duplicate finish request for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    return v11

    :cond_0
    iget-object v11, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v11}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->makeFinishingLocked()V

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v7

    .local v7, "task":Lcom/android/server/am/TaskRecord;
    const/4 v11, 0x5

    new-array v11, v11, [Ljava/lang/Object;

    iget v12, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x1

    aput-object v12, v11, v13

    iget v12, v7, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x2

    aput-object v12, v11, v13

    iget-object v12, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    const/4 v13, 0x3

    aput-object v12, v11, v13

    const/4 v12, 0x4

    aput-object p4, v11, v12

    const/16 v12, 0x7531

    invoke-static {v12, v11}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iget-object v1, v7, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .local v1, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .local v4, "index":I
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    if-ge v4, v11, :cond_1

    invoke-virtual {v7}, Lcom/android/server/am/TaskRecord;->setFrontOfTask()V

    iget-object v11, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v11}, Landroid/content/Intent;->getFlags()I

    move-result v11

    const/high16 v12, 0x80000

    and-int/2addr v11, v12

    if-eqz v11, :cond_1

    add-int/lit8 v11, v4, 0x1

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .local v5, "next":Lcom/android/server/am/ActivityRecord;
    iget-object v11, v5, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const/high16 v12, 0x80000

    invoke-virtual {v11, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .end local v5    # "next":Lcom/android/server/am/ActivityRecord;
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->pauseKeyDispatchingLocked()V

    const-string/jumbo v11, "finishActivity"

    invoke-direct {p0, p1, v11}, Lcom/android/server/am/ActivityStack;->adjustFocusedActivityStackLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p3}, Lcom/android/server/am/ActivityStack;->finishActivityResultsLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;)V

    if-gtz v4, :cond_5

    invoke-virtual {v7}, Lcom/android/server/am/TaskRecord;->isClearingToReuseTask()Z

    move-result v11

    xor-int/lit8 v2, v11, 0x1

    :goto_0
    if-eqz v2, :cond_6

    const/16 v10, 0x9

    .local v10, "transit":I
    :goto_1
    iget-object v11, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v11, p1, :cond_7

    if-eqz v2, :cond_2

    iget-object v11, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    iget v12, v7, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v11, v12}, Lcom/android/server/am/TaskChangeNotificationController;->notifyTaskRemovalStarted(I)V

    :cond_2
    iget-object v11, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v12, 0x0

    invoke-virtual {v11, v10, v12}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    const/4 v11, 0x0

    invoke-virtual {p1, v11}, Lcom/android/server/am/ActivityRecord;->setVisibility(Z)V

    iget-object v11, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-nez v11, :cond_3

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move/from16 v0, p6

    invoke-virtual {p0, v11, v12, v13, v0}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZLcom/android/server/am/ActivityRecord;Z)Z

    :cond_3
    if-eqz v2, :cond_4

    iget-object v11, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v11, v7}, Lcom/android/server/am/ActivityStackSupervisor;->removeLockedTaskLocked(Lcom/android/server/am/TaskRecord;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v12}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    return v11

    .end local v10    # "transit":I
    :cond_5
    const/4 v2, 0x0

    .local v2, "endTask":Z
    goto :goto_0

    .end local v2    # "endTask":Z
    :cond_6
    const/4 v10, 0x7

    .restart local v10    # "transit":I
    goto :goto_1

    :cond_7
    :try_start_1
    iget-object v11, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v12, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v11, v12, :cond_4

    iget-boolean v11, p1, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v11, :cond_8

    invoke-direct {p0, p1, v10}, Lcom/android/server/am/ActivityStack;->prepareActivityHideTransitionAnimation(Lcom/android/server/am/ActivityRecord;I)V

    :cond_8
    iget-boolean v11, p1, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v11, :cond_9

    iget-boolean v11, p1, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v11, :cond_b

    :cond_9
    const/4 v3, 0x2

    .local v3, "finishMode":I
    :goto_2
    move/from16 v0, p5

    invoke-virtual {p0, p1, v3, v0}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;

    move-result-object v11

    if-nez v11, :cond_c

    const/4 v6, 0x1

    .local v6, "removedActivity":Z
    :goto_3
    const/4 v11, 0x1

    invoke-virtual {v7, v11}, Lcom/android/server/am/TaskRecord;->onlyHasTaskOverlayActivities(Z)Z

    move-result v11

    if-eqz v11, :cond_d

    iget-object v11, v7, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "taskOverlay$iterator":Ljava/util/Iterator;
    :cond_a
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityRecord;

    .local v8, "taskOverlay":Lcom/android/server/am/ActivityRecord;
    iget-boolean v11, v8, Lcom/android/server/am/ActivityRecord;->mTaskOverlay:Z

    if-eqz v11, :cond_a

    invoke-direct {p0, v8, v10}, Lcom/android/server/am/ActivityStack;->prepareActivityHideTransitionAnimation(Lcom/android/server/am/ActivityRecord;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .end local v1    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v3    # "finishMode":I
    .end local v4    # "index":I
    .end local v6    # "removedActivity":Z
    .end local v7    # "task":Lcom/android/server/am/TaskRecord;
    .end local v8    # "taskOverlay":Lcom/android/server/am/ActivityRecord;
    .end local v9    # "taskOverlay$iterator":Ljava/util/Iterator;
    .end local v10    # "transit":I
    :catchall_0
    move-exception v11

    iget-object v12, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v12}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v11

    .restart local v1    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v4    # "index":I
    .restart local v7    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v10    # "transit":I
    :cond_b
    const/4 v3, 0x1

    .restart local v3    # "finishMode":I
    goto :goto_2

    :cond_c
    const/4 v6, 0x0

    .restart local v6    # "removedActivity":Z
    goto :goto_3

    :cond_d
    iget-object v11, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v11}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    return v6
.end method

.method finishAllActivitiesLocked(Z)V
    .locals 9
    .param p1, "immediately"    # Z

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v8, 0x0

    const/4 v2, 0x1

    .local v2, "noActivitiesInStack":Z
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    .local v4, "taskNdx":I
    :goto_0
    if-ltz v4, :cond_2

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    iget-object v0, v5, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "activityNdx":I
    :goto_1
    if-ltz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    const/4 v2, 0x0

    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_0

    xor-int/lit8 v5, p1, 0x1

    if-eqz v5, :cond_0

    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_0
    sget-object v5, Lcom/android/server/am/ActivityStack;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "finishAllActivitiesLocked: finishing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " immediately"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v3, v8, v8}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;

    goto :goto_2

    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->remove()V

    :cond_3
    return-void
.end method

.method final finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;
    .locals 10
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "mode"    # I
    .param p3, "oomAdj"    # Z

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .local v2, "next":Lcom/android/server/am/ActivityRecord;
    if-ne p2, v9, :cond_3

    iget-boolean v5, p1, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v5, :cond_0

    iget-boolean v5, p1, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v5, :cond_3

    :cond_0
    if-eqz v2, :cond_3

    iget-boolean v5, v2, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_3

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0, p1, v7, v7}, Lcom/android/server/am/ActivityStack;->addToStopping(Lcom/android/server/am/ActivityRecord;ZZ)V

    :cond_1
    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v4, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eqz p3, :cond_2

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    :cond_2
    return-object p1

    :cond_3
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v5, v5, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v5, v5, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v5, v5, Lcom/android/server/am/ActivityStackSupervisor;->mActivitiesWaitingForVisibleActivity:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v5, p1, :cond_4

    iput-object v4, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    :cond_4
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .local v3, "prevState":Lcom/android/server/am/ActivityStack$ActivityState;
    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->FINISHING:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v5, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v6

    if-eq v5, v6, :cond_a

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v3, v5, :cond_a

    if-ne p2, v9, :cond_9

    const/4 v1, 0x1

    .local v1, "finishingActivityInNonFocusedStack":Z
    :goto_0
    if-eqz p2, :cond_5

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v3, v5, :cond_b

    if-eq p2, v8, :cond_5

    iget v5, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_b

    :cond_5
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->makeFinishingLocked()V

    const-string/jumbo v5, "finish-imm"

    invoke-virtual {p0, p1, v8, v5}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    move-result v0

    .local v0, "activityRemoved":Z
    if-eqz v1, :cond_6

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5, v4, v7, v7}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    :cond_6
    if-eqz v0, :cond_7

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    :cond_7
    if-eqz v0, :cond_8

    move-object p1, v4

    .end local p1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_8
    return-object p1

    .end local v0    # "activityRemoved":Z
    .end local v1    # "finishingActivityInNonFocusedStack":Z
    .restart local p1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_9
    const/4 v1, 0x0

    .restart local v1    # "finishingActivityInNonFocusedStack":Z
    goto :goto_0

    .end local v1    # "finishingActivityInNonFocusedStack":Z
    :cond_a
    const/4 v1, 0x0

    .restart local v1    # "finishingActivityInNonFocusedStack":Z
    goto :goto_0

    :cond_b
    if-nez v1, :cond_5

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v3, v5, :cond_5

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v3, v5, :cond_5

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v3, v5, :cond_5

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->resumeKeyDispatchingLocked()V

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    return-object p1
.end method

.method finishDisabledPackageActivitiesLocked(Ljava/lang/String;Ljava/util/Set;ZZI)Z
    .locals 15
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "doit"    # Z
    .param p4, "evenPersistent"    # Z
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;ZZI)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    .local p2, "filterByClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .local v9, "didSomething":Z
    const/4 v11, 0x0

    .local v11, "lastTask":Lcom/android/server/am/TaskRecord;
    const/4 v10, 0x0

    .local v10, "homeActivity":Landroid/content/ComponentName;
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v14, v1, -0x1

    .end local v10    # "homeActivity":Landroid/content/ComponentName;
    .end local v11    # "lastTask":Lcom/android/server/am/TaskRecord;
    .local v14, "taskNdx":I
    :goto_0
    if-ltz v14, :cond_e

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    iget-object v7, v1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .local v7, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v12

    .local v12, "numActivities":I
    const/4 v8, 0x0

    .local v8, "activityNdx":I
    :goto_1
    if-ge v8, v12, :cond_d

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v1, v2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_5

    iget-object v1, v2, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_0
    if-nez p1, :cond_6

    iget v1, v2, Lcom/android/server/am/ActivityRecord;->userId:I

    move/from16 v0, p5

    if-ne v1, v0, :cond_6

    const/4 v13, 0x1

    .local v13, "sameComponent":Z
    :goto_2
    const/4 v1, -0x1

    move/from16 v0, p5

    if-eq v0, v1, :cond_1

    iget v1, v2, Lcom/android/server/am/ActivityRecord;->userId:I

    move/from16 v0, p5

    if-ne v1, v0, :cond_4

    :cond_1
    if-nez v13, :cond_2

    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    if-ne v1, v11, :cond_4

    :cond_2
    iget-object v1, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_3

    if-nez p4, :cond_3

    iget-object v1, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-boolean v1, v1, Lcom/android/server/am/ProcessRecord;->persistent:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4

    :cond_3
    if-nez p3, :cond_8

    iget-boolean v1, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v1, :cond_7

    :cond_4
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .end local v13    # "sameComponent":Z
    :cond_5
    const/4 v13, 0x1

    .restart local v13    # "sameComponent":Z
    goto :goto_2

    .end local v13    # "sameComponent":Z
    :cond_6
    const/4 v13, 0x0

    .restart local v13    # "sameComponent":Z
    goto :goto_2

    :cond_7
    const/4 v1, 0x1

    return v1

    :cond_8
    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v1

    if-eqz v1, :cond_a

    if-eqz v10, :cond_9

    iget-object v1, v2, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v10, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v1, Lcom/android/server/am/ActivityStack;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Skip force-stop again "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_9
    iget-object v10, v2, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    :cond_a
    const/4 v9, 0x1

    sget-object v1, Lcom/android/server/am/ActivityStack;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "  Force finishing activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v13, :cond_c

    iget-object v1, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_b

    iget-object v1, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/server/am/ProcessRecord;->removed:Z

    :cond_b
    const/4 v1, 0x0

    iput-object v1, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    :cond_c
    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v11

    .local v11, "lastTask":Lcom/android/server/am/TaskRecord;
    const-string/jumbo v5, "force-stop"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    add-int/lit8 v12, v12, -0x1

    add-int/lit8 v8, v8, -0x1

    goto :goto_3

    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v11    # "lastTask":Lcom/android/server/am/TaskRecord;
    .end local v13    # "sameComponent":Z
    :cond_d
    add-int/lit8 v14, v14, -0x1

    goto/16 :goto_0

    .end local v7    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v8    # "activityNdx":I
    .end local v12    # "numActivities":I
    :cond_e
    return v9
.end method

.method final finishSubActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;I)V
    .locals 9
    .param p1, "self"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "resultWho"    # Ljava/lang/String;
    .param p3, "requestCode"    # I

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v8, v0, -0x1

    .local v8, "taskNdx":I
    :goto_0
    if-ltz v8, :cond_3

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    iget-object v6, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .local v6, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v7, v0, -0x1

    .local v7, "activityNdx":I
    :goto_1
    if-ltz v7, :cond_2

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-ne v0, p1, :cond_0

    iget v0, v1, Lcom/android/server/am/ActivityRecord;->requestCode:I

    if-ne v0, p3, :cond_0

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    :goto_2
    const-string/jumbo v4, "request-sub"

    move-object v0, p0

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    :cond_0
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    :cond_1
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .end local v6    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v7    # "activityNdx":I
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    return-void
.end method

.method final finishTopRunningActivityLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Lcom/android/server/am/TaskRecord;
    .locals 10
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    const/4 v7, 0x0

    .local v7, "finishedTask":Lcom/android/server/am/TaskRecord;
    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eq v0, p1, :cond_1

    :cond_0
    return-object v3

    :cond_1
    sget-object v0, Lcom/android/server/am/ActivityStack;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "  Force finishing activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v7

    .local v7, "finishedTask":Lcom/android/server/am/TaskRecord;
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    .local v9, "taskNdx":I
    move-object v8, v7

    .local v8, "task":Lcom/android/server/am/TaskRecord;
    iget-object v0, v7, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .local v6, "activityNdx":I
    move-object v0, p0

    move-object v4, p2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    add-int/lit8 v6, v6, -0x1

    if-gez v6, :cond_2

    :goto_0
    add-int/lit8 v9, v9, -0x1

    if-gez v9, :cond_6

    :cond_2
    if-ltz v6, :cond_5

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .restart local v1    # "r":Lcom/android/server/am/ActivityRecord;
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v0, v4, :cond_3

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v0, v4, :cond_7

    :cond_3
    :goto_1
    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eq v0, v4, :cond_5

    :cond_4
    sget-object v0, Lcom/android/server/am/ActivityStack;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "  Force finishing activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    move-object v4, p2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    :cond_5
    return-object v7

    :cond_6
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v6, v0, -0x1

    if-gez v6, :cond_2

    goto :goto_0

    :cond_7
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v0, v4, :cond_5

    goto :goto_1
.end method

.method final finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V
    .locals 12
    .param p1, "session"    # Landroid/service/voice/IVoiceInteractionSession;

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-interface {p1}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    .local v9, "sessionBinder":Landroid/os/IBinder;
    const/4 v7, 0x0

    .local v7, "didOne":Z
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v10, v0, -0x1

    .local v10, "taskNdx":I
    :goto_0
    if-ltz v10, :cond_4

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/TaskRecord;

    .local v11, "tr":Lcom/android/server/am/TaskRecord;
    iget-object v0, v11, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v0, :cond_1

    iget-object v0, v11, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    invoke-interface {v0}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, v9, :cond_1

    iget-object v0, v11, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v6, v0, -0x1

    .local v6, "activityNdx":I
    :goto_1
    if-ltz v6, :cond_2

    iget-object v0, v11, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v0, :cond_0

    const-string/jumbo v4, "finish-voice"

    move-object v0, p0

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    const/4 v7, 0x1

    :cond_0
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v6    # "activityNdx":I
    :cond_1
    iget-object v0, v11, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v6, v0, -0x1

    .restart local v6    # "activityNdx":I
    :goto_2
    if-ltz v6, :cond_2

    iget-object v0, v11, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .restart local v1    # "r":Lcom/android/server/am/ActivityRecord;
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    invoke-interface {v0}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, v9, :cond_3

    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->clearVoiceSessionLocked()V

    :try_start_0
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v5, 0x0

    invoke-interface {v0, v4, v5}, Landroid/app/IApplicationThread;->scheduleLocalVoiceInteractionStarted(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->finishRunningVoiceLocked()V

    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2
    add-int/lit8 v10, v10, -0x1

    goto :goto_0

    .restart local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_3
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v6    # "activityNdx":I
    .end local v11    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_4
    if-eqz v7, :cond_5

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    :cond_5
    return-void

    .restart local v1    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v6    # "activityNdx":I
    .restart local v11    # "tr":Lcom/android/server/am/TaskRecord;
    :catch_0
    move-exception v8

    .local v8, "re":Landroid/os/RemoteException;
    goto :goto_3
.end method

.method getAdjustedPositionForTask(Lcom/android/server/am/TaskRecord;ILcom/android/server/am/ActivityRecord;)I
    .locals 4
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "suggestedPosition"    # I
    .param p3, "starting"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "maxPosition":I
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/android/server/am/ActivityRecord;->okToShowLocked()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    if-nez p3, :cond_3

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->okToShowLocked()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    return v2

    .local v1, "tmpTask":Lcom/android/server/am/TaskRecord;
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .end local v1    # "tmpTask":Lcom/android/server/am/TaskRecord;
    :cond_3
    if-lez v0, :cond_4

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    .restart local v1    # "tmpTask":Lcom/android/server/am/TaskRecord;
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v3, v1, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->isCurrentProfileLocked(I)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    if-nez v2, :cond_2

    .end local v1    # "tmpTask":Lcom/android/server/am/TaskRecord;
    :cond_4
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    return v2
.end method

.method getAllRunningVisibleActivitiesLocked(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    .local p1, "outActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "taskNdx":I
    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v1, p1}, Lcom/android/server/am/TaskRecord;->getAllRunningVisibleActivitiesLocked(Ljava/util/ArrayList;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method getAllTasks()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method getBoundsForNewConfiguration(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/StackWindowController;->getBoundsForNewConfiguration(Landroid/graphics/Rect;)V

    return-void
.end method

.method protected getChildAt(I)Lcom/android/server/am/ConfigurationContainer;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ConfigurationContainer;

    return-object v0
.end method

.method protected getChildCount()I
    .locals 1

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method getDisplay()Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    .locals 2

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v1, p0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getActivityDisplay(I)Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    move-result-object v0

    return-object v0
.end method

.method getDisplaySize(Landroid/graphics/Point;)V
    .locals 1
    .param p1, "out"    # Landroid/graphics/Point;

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0, p1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    return-void
.end method

.method getDumpActivitiesLocked(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const-string/jumbo v8, "all"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v6, v8, -0x1

    .local v6, "taskNdx":I
    :goto_0
    if-ltz v6, :cond_1

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/TaskRecord;

    iget-object v8, v8, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .end local v6    # "taskNdx":I
    :cond_0
    const-string/jumbo v8, "top"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v7, v8, -0x1

    .local v7, "top":I
    if-ltz v7, :cond_1

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/TaskRecord;

    iget-object v1, v8, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v2, v8, -0x1

    .local v2, "listTop":I
    if-ltz v2, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v2    # "listTop":I
    .end local v7    # "top":I
    :cond_1
    return-object v0

    :cond_2
    new-instance v3, Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    invoke-direct {v3}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;-><init>()V

    .local v3, "matcher":Lcom/android/server/am/ActivityManagerService$ItemMatcher;
    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->build(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v6, v8, -0x1

    .restart local v6    # "taskNdx":I
    :goto_1
    if-ltz v6, :cond_1

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/TaskRecord;

    iget-object v8, v8, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "r1$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .local v4, "r1":Lcom/android/server/am/ActivityRecord;
    iget-object v8, v4, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v3, v4, v8}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .end local v4    # "r1":Lcom/android/server/am/ActivityRecord;
    :cond_4
    add-int/lit8 v6, v6, -0x1

    goto :goto_1
.end method

.method protected getParent()Lcom/android/server/am/ConfigurationContainer;
    .locals 1

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    move-result-object v0

    return-object v0
.end method

.method getPresentUIDs(Landroid/util/IntArray;)V
    .locals 5
    .param p1, "presentUIDs"    # Landroid/util/IntArray;

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "task$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .local v2, "task":Lcom/android/server/am/TaskRecord;
    iget-object v4, v2, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "r$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getUid()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/util/IntArray;->add(I)V

    goto :goto_0

    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v1    # "r$iterator":Ljava/util/Iterator;
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    :cond_1
    return-void
.end method

.method getStackDockedModeBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .locals 1
    .param p1, "currentTempTaskBounds"    # Landroid/graphics/Rect;
    .param p2, "outStackBounds"    # Landroid/graphics/Rect;
    .param p3, "outTempTaskBounds"    # Landroid/graphics/Rect;
    .param p4, "ignoreVisibility"    # Z

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/wm/StackWindowController;->getStackDockedModeBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    return-void
.end method

.method public getStackId()I
    .locals 1

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget v0, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    return v0
.end method

.method getTasksLocked(Ljava/util/List;IZ)V
    .locals 16
    .param p2, "callingUid"    # I
    .param p3, "allowed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v14}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v14

    move-object/from16 v0, p0

    if-ne v14, v0, :cond_1

    const/4 v5, 0x1

    .local v5, "focusedStack":Z
    :goto_0
    const/4 v13, 0x1

    .local v13, "topTask":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v10, v14, -0x1

    .local v10, "taskNdx":I
    :goto_1
    if-ltz v10, :cond_b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/TaskRecord;

    .local v9, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v9}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v14

    if-nez v14, :cond_2

    :cond_0
    :goto_2
    add-int/lit8 v10, v10, -0x1

    goto :goto_1

    .end local v5    # "focusedStack":Z
    .end local v9    # "task":Lcom/android/server/am/TaskRecord;
    .end local v10    # "taskNdx":I
    .end local v13    # "topTask":Z
    :cond_1
    const/4 v5, 0x0

    .restart local v5    # "focusedStack":Z
    goto :goto_0

    .restart local v9    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v10    # "taskNdx":I
    .restart local v13    # "topTask":Z
    :cond_2
    const/4 v8, 0x0

    .local v8, "r":Lcom/android/server/am/ActivityRecord;
    const/4 v12, 0x0

    .local v12, "top":Lcom/android/server/am/ActivityRecord;
    const/4 v6, 0x0

    .local v6, "numActivities":I
    const/4 v7, 0x0

    .local v7, "numRunning":I
    iget-object v2, v9, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .local v2, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    if-nez p3, :cond_3

    invoke-virtual {v9}, Lcom/android/server/am/TaskRecord;->isHomeTask()Z

    move-result v14

    xor-int/lit8 v14, v14, 0x1

    if-eqz v14, :cond_3

    iget v14, v9, Lcom/android/server/am/TaskRecord;->effectiveUid:I

    move/from16 v0, p2

    if-ne v14, v0, :cond_0

    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v3, v14, -0x1

    .end local v8    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v12    # "top":Lcom/android/server/am/ActivityRecord;
    .local v3, "activityNdx":I
    :goto_3
    if-ltz v3, :cond_8

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ActivityRecord;

    .local v11, "tmp":Lcom/android/server/am/ActivityRecord;
    iget-boolean v14, v11, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v14, :cond_5

    :cond_4
    :goto_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    :cond_5
    move-object v8, v11

    .local v8, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v12, :cond_6

    iget-object v14, v12, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v15, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v14, v15, :cond_7

    :cond_6
    move-object v12, v11

    .local v12, "top":Lcom/android/server/am/ActivityRecord;
    const/4 v7, 0x0

    const/4 v6, 0x0

    .end local v12    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_7
    add-int/lit8 v6, v6, 0x1

    iget-object v14, v11, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v14, :cond_4

    iget-object v14, v11, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v14, v14, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v14, :cond_4

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .end local v8    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v11    # "tmp":Lcom/android/server/am/ActivityRecord;
    :cond_8
    new-instance v4, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-direct {v4}, Landroid/app/ActivityManager$RunningTaskInfo;-><init>()V

    .local v4, "ci":Landroid/app/ActivityManager$RunningTaskInfo;
    iget v14, v9, Lcom/android/server/am/TaskRecord;->taskId:I

    iput v14, v4, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    iput v14, v4, Landroid/app/ActivityManager$RunningTaskInfo;->stackId:I

    iget-object v14, v8, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v14}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v14

    iput-object v14, v4, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    iget-object v14, v12, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v14}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v14

    iput-object v14, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    iget-wide v14, v9, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    iput-wide v14, v4, Landroid/app/ActivityManager$RunningTaskInfo;->lastActiveTime:J

    if-eqz v5, :cond_9

    if-eqz v13, :cond_9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    iput-wide v14, v4, Landroid/app/ActivityManager$RunningTaskInfo;->lastActiveTime:J

    const/4 v13, 0x0

    :cond_9
    invoke-virtual {v12}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v14

    if-eqz v14, :cond_a

    invoke-virtual {v12}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v14

    iget-object v14, v14, Lcom/android/server/am/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    iput-object v14, v4, Landroid/app/ActivityManager$RunningTaskInfo;->description:Ljava/lang/CharSequence;

    :cond_a
    iput v6, v4, Landroid/app/ActivityManager$RunningTaskInfo;->numActivities:I

    iput v7, v4, Landroid/app/ActivityManager$RunningTaskInfo;->numRunning:I

    invoke-virtual {v9}, Lcom/android/server/am/TaskRecord;->supportsSplitScreen()Z

    move-result v14

    iput-boolean v14, v4, Landroid/app/ActivityManager$RunningTaskInfo;->supportsSplitScreenMultiWindow:Z

    iget v14, v9, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    iput v14, v4, Landroid/app/ActivityManager$RunningTaskInfo;->resizeMode:I

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .end local v2    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v3    # "activityNdx":I
    .end local v4    # "ci":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v6    # "numActivities":I
    .end local v7    # "numRunning":I
    .end local v9    # "task":Lcom/android/server/am/TaskRecord;
    :cond_b
    return-void
.end method

.method getTopDismissingKeyguardActivity()Lcom/android/server/am/ActivityRecord;
    .locals 1

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTopDismissingKeyguardActivity:Lcom/android/server/am/ActivityRecord;

    return-object v0
.end method

.method getWindowContainerBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/StackWindowController;->getBounds(Landroid/graphics/Rect;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    return-void
.end method

.method getWindowContainerController()Lcom/android/server/wm/StackWindowController;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    return-object v0
.end method

.method goToSleep()V
    .locals 6

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v5, v5}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .local v3, "taskNdx":I
    :goto_0
    if-ltz v3, :cond_4

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    iget-object v0, v4, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "activityNdx":I
    :goto_1
    if-ltz v1, :cond_3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v4, v5, :cond_0

    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v4, v5, :cond_2

    :cond_0
    :goto_2
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityRecord;->setSleeping(Z)V

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_2
    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v4, v5, :cond_0

    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v4, v5, :cond_1

    goto :goto_2

    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    :cond_4
    return-void
.end method

.method goToSleepIfPossible(Z)Z
    .locals 4
    .param p1, "shuttingDown"    # Z

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x1

    .local v0, "shouldSleep":Z
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->inResumeTopActivity:Z

    if-eqz v1, :cond_4

    :goto_0
    const/4 v0, 0x0

    :cond_0
    :goto_1
    if-nez p1, :cond_2

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/android/server/am/ActivityStack;->containsActivityFromStack(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleLocked()V

    const/4 v0, 0x0

    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/android/server/am/ActivityStack;->containsActivityFromStack(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->goToSleep()V

    :cond_3
    return v0

    :cond_4
    const/4 v1, 0x1

    invoke-virtual {p0, v3, v1, v2, v3}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZLcom/android/server/am/ActivityRecord;Z)Z

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_1
.end method

.method handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 8
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v7, 0x0

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .local v3, "taskNdx":I
    :goto_0
    if-ltz v3, :cond_2

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    iget-object v0, v4, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "activityNdx":I
    :goto_1
    if-ltz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v4, p1, :cond_0

    sget-object v4, Lcom/android/server/am/ActivityStack;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  Force finishing activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    iput-object v4, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0, v2, v7, v7}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    :cond_2
    return-void
.end method

.method handleAppDiedLocked(Lcom/android/server/am/ProcessRecord;)Z
    .locals 2
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v0, p1, :cond_0

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v0, p1, :cond_1

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    return v0
.end method

.method isATopFinishingTask(Lcom/android/server/am/TaskRecord;)Z
    .locals 5
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v4, 0x0

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    .local v0, "current":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_0

    return v4

    :cond_0
    if-ne v0, p1, :cond_1

    const/4 v3, 0x1

    return v3

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .end local v0    # "current":Lcom/android/server/am/TaskRecord;
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2
    return v4
.end method

.method final isAssistantStack()Z
    .locals 2

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget v0, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final isAttached()Z
    .locals 1

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final isDockedStack()Z
    .locals 2

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget v0, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isFocusable()Z
    .locals 2

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget v1, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-static {v1}, Landroid/app/ActivityManager$StackId;->canReceiveKeys(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->isFocusable()Z

    move-result v1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method final isHomeOrRecentsStack()Z
    .locals 1

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget v0, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-static {v0}, Landroid/app/ActivityManager$StackId;->isHomeOrRecentsStack(I)Z

    move-result v0

    return v0
.end method

.method final isHomeStack()Z
    .locals 2

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    return-object v1
.end method

.method isInStackLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v3, 0x0

    if-nez p1, :cond_0

    return-object v3

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    .local v1, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_2

    iget-object v2, v1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eq v0, p0, :cond_1

    sget-object v2, Lcom/android/server/am/ActivityStack;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Illegal state! task does not point to stack it is in."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object p1

    :cond_2
    return-object v3
.end method

.method isInStackLocked(Lcom/android/server/am/TaskRecord;)Z
    .locals 1
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method final isOnHomeDisplay()Z
    .locals 2

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isAttached()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method final isPinnedStack()Z
    .locals 2

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget v0, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final isRecentsStack()Z
    .locals 2

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget v0, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isUidPresent(I)Z
    .locals 5
    .param p1, "uid"    # I

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "task$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .local v2, "task":Lcom/android/server/am/TaskRecord;
    iget-object v4, v2, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "r$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getUid()I

    move-result v4

    if-ne v4, p1, :cond_1

    const/4 v4, 0x1

    return v4

    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v1    # "r$iterator":Ljava/util/Iterator;
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    :cond_2
    const/4 v4, 0x0

    return v4
.end method

.method isVisible()Z
    .locals 1

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    invoke-virtual {v0}, Lcom/android/server/wm/StackWindowController;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/am/ActivityStack;->mForceHidden:Z

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method layoutTaskInStack(Lcom/android/server/am/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;)Z
    .locals 2
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "windowLayout"    # Landroid/content/pm/ActivityInfo$WindowLayout;

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskPositioner:Lcom/android/server/am/LaunchingTaskPositioner;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskPositioner:Lcom/android/server/am/LaunchingTaskPositioner;

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/server/am/LaunchingTaskPositioner;->updateDefaultBounds(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;Landroid/content/pm/ActivityInfo$WindowLayout;)V

    const/4 v0, 0x1

    return v0
.end method

.method minimalResumeActivityLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 1
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const-string/jumbo v0, "minimalResumeActivityLocked"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ActivityStack;->setResumedActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->completeResumeLocked()V

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->setLaunchTime(Lcom/android/server/am/ActivityRecord;)V

    return-void
.end method

.method moveHomeStackTaskToTop()V
    .locals 5

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v4, 0x1

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "top":I
    move v1, v2

    .local v1, "taskNdx":I
    :goto_0
    if-ltz v1, :cond_1

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    .local v0, "task":Lcom/android/server/am/TaskRecord;
    iget v3, v0, Lcom/android/server/am/TaskRecord;->taskType:I

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-direct {p0, v0, v4}, Lcom/android/server/am/ActivityStack;->updateTaskMovement(Lcom/android/server/am/TaskRecord;Z)V

    return-void

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .end local v0    # "task":Lcom/android/server/am/TaskRecord;
    :cond_1
    return-void
.end method

.method final moveTaskToBackLocked(I)Z
    .locals 14
    .param p1, "taskId"    # I

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->taskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v10

    .local v10, "tr":Lcom/android/server/am/TaskRecord;
    if-nez v10, :cond_0

    sget-object v11, Lcom/android/server/am/ActivityStack;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "moveTaskToBack: bad taskId="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    return v11

    :cond_0
    sget-object v11, Lcom/android/server/am/ActivityStack;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "moveTaskToBack: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v11, v10}, Lcom/android/server/am/ActivityStackSupervisor;->isLockedTask(Lcom/android/server/am/TaskRecord;)Z

    move-result v11

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v11}, Lcom/android/server/am/ActivityStackSupervisor;->showLockTaskToast()V

    const/4 v11, 0x0

    return v11

    :cond_1
    iget-object v11, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v11, p0}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStackOnDisplay(Lcom/android/server/am/ActivityStack;)Z

    move-result v11

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    if-eqz v11, :cond_3

    const/4 v11, 0x0

    invoke-virtual {p0, v11, p1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Landroid/os/IBinder;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .local v3, "next":Lcom/android/server/am/ActivityRecord;
    if-nez v3, :cond_2

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Landroid/os/IBinder;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    :cond_2
    if-eqz v3, :cond_3

    const/4 v2, 0x1

    .local v2, "moveOK":Z
    :try_start_0
    iget-object v11, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    iget-object v12, v3, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-interface {v11, v12}, Landroid/app/IActivityController;->activityResuming(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .end local v2    # "moveOK":Z
    :goto_0
    if-nez v2, :cond_3

    const/4 v11, 0x0

    return v11

    .restart local v2    # "moveOK":Z
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    iget-object v11, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v12, 0x0

    iput-object v12, v11, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    goto :goto_0

    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "moveOK":Z
    .end local v3    # "next":Lcom/android/server/am/ActivityRecord;
    :cond_3
    const/4 v6, 0x0

    .local v6, "prevIsHome":Z
    invoke-virtual {v10}, Lcom/android/server/am/TaskRecord;->isHomeTask()Z

    move-result v11

    if-nez v11, :cond_6

    invoke-virtual {v10}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_4

    invoke-direct {p0, v10}, Lcom/android/server/am/ActivityStack;->getNextTask(Lcom/android/server/am/TaskRecord;)Lcom/android/server/am/TaskRecord;

    move-result-object v4

    .local v4, "nextTask":Lcom/android/server/am/TaskRecord;
    if-eqz v4, :cond_7

    invoke-virtual {v10}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    move-result v11

    invoke-virtual {v4, v11}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .end local v4    # "nextTask":Lcom/android/server/am/TaskRecord;
    :cond_4
    :goto_2
    iget-object v11, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v11

    if-eqz v11, :cond_8

    const/4 v7, 0x1

    .local v7, "requiresMove":Z
    :goto_3
    if-eqz v7, :cond_5

    iget-object v11, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v11, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    const/4 v12, 0x0

    invoke-virtual {v11, v12, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v11, 0x0

    invoke-direct {p0, v10, v11}, Lcom/android/server/am/ActivityStack;->updateTaskMovement(Lcom/android/server/am/TaskRecord;Z)V

    iget-object v11, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v12, 0xb

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    iget-object v11, p0, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    invoke-virtual {v10}, Lcom/android/server/am/TaskRecord;->getWindowContainerController()Lcom/android/server/wm/TaskWindowContainerController;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/server/wm/StackWindowController;->positionChildAtBottom(Lcom/android/server/wm/TaskWindowContainerController;)V

    :cond_5
    iget v11, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v12, 0x4

    if-ne v11, v12, :cond_9

    iget-object v11, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Lcom/android/server/am/ActivityStackSupervisor;->removeStackLocked(I)V

    const/4 v11, 0x1

    return v11

    .end local v7    # "requiresMove":Z
    :cond_6
    const/4 v0, 0x0

    .local v0, "canGoHome":Z
    goto :goto_1

    .end local v0    # "canGoHome":Z
    .restart local v4    # "nextTask":Lcom/android/server/am/TaskRecord;
    :cond_7
    const/4 v6, 0x1

    goto :goto_2

    .end local v4    # "nextTask":Lcom/android/server/am/TaskRecord;
    :cond_8
    const/4 v7, 0x0

    .restart local v7    # "requiresMove":Z
    goto :goto_3

    :cond_9
    iget-object v11, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v5

    .local v5, "numTasks":I
    add-int/lit8 v9, v5, -0x1

    .local v9, "taskNdx":I
    :goto_4
    const/4 v11, 0x1

    if-lt v9, v11, :cond_a

    iget-object v11, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/TaskRecord;

    .local v8, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v8}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v11

    if-eqz v11, :cond_d

    .end local v8    # "task":Lcom/android/server/am/TaskRecord;
    :cond_a
    iget-object v11, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v11, :cond_f

    iget-object v11, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v11}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v8

    :goto_5
    if-nez v6, :cond_c

    if-ne v8, v10, :cond_b

    if-nez v0, :cond_c

    :cond_b
    const/4 v11, 0x1

    if-gt v5, v11, :cond_11

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    move-result v11

    if-eqz v11, :cond_11

    :cond_c
    iget-object v11, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v11, v11, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    if-nez v11, :cond_10

    iget-object v11, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v11, v11, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_10

    const/4 v11, 0x0

    return v11

    .restart local v8    # "task":Lcom/android/server/am/TaskRecord;
    :cond_d
    const/4 v11, 0x1

    if-ne v9, v11, :cond_e

    const/4 v11, 0x1

    invoke-virtual {v8, v11}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    :cond_e
    add-int/lit8 v9, v9, -0x1

    goto :goto_4

    .end local v8    # "task":Lcom/android/server/am/TaskRecord;
    :cond_f
    const/4 v8, 0x0

    .local v8, "task":Lcom/android/server/am/TaskRecord;
    goto :goto_5

    .end local v8    # "task":Lcom/android/server/am/TaskRecord;
    :cond_10
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    iget-object v11, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const-string/jumbo v12, "moveTaskToBack"

    const/4 v13, 0x0

    invoke-virtual {v11, v13, v12}, Lcom/android/server/am/ActivityStackSupervisor;->resumeHomeStackTask(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z

    move-result v11

    return v11

    :cond_11
    iget-object v11, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v11}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    const/4 v11, 0x1

    return v11
.end method

.method final moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V
    .locals 10
    .param p1, "tr"    # Lcom/android/server/am/TaskRecord;
    .param p2, "noAnimation"    # Z
    .param p3, "options"    # Landroid/app/ActivityOptions;
    .param p4, "timeTracker"    # Lcom/android/server/am/AppTimeTracker;
    .param p5, "reason"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-direct {p0}, Lcom/android/server/am/ActivityStack;->getTopStackOnDisplay()Lcom/android/server/am/ActivityStack;

    move-result-object v6

    .local v6, "topStack":Lcom/android/server/am/ActivityStack;
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    :goto_0
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "numTasks":I
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .local v1, "index":I
    if-eqz v2, :cond_0

    if-gez v1, :cond_3

    :cond_0
    if-eqz p2, :cond_2

    invoke-static {p3}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    :goto_1
    return-void

    .end local v1    # "index":I
    .end local v2    # "numTasks":I
    :cond_1
    const/4 v5, 0x0

    .local v5, "topActivity":Lcom/android/server/am/ActivityRecord;
    goto :goto_0

    .end local v5    # "topActivity":Lcom/android/server/am/ActivityRecord;
    .restart local v1    # "index":I
    .restart local v2    # "numTasks":I
    :cond_2
    const/16 v7, 0xa

    invoke-direct {p0, v7, p3}, Lcom/android/server/am/ActivityStack;->updateTransitLocked(ILandroid/app/ActivityOptions;)V

    goto :goto_1

    :cond_3
    if-eqz p4, :cond_4

    iget-object v7, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v0, v7, -0x1

    .local v0, "i":I
    :goto_2
    if-ltz v0, :cond_4

    iget-object v7, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ActivityRecord;

    iput-object p4, v7, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .end local v0    # "i":I
    :cond_4
    const/4 v7, 0x0

    invoke-direct {p0, p1, v7}, Lcom/android/server/am/ActivityStack;->insertTaskAtTop(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;)V

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .local v4, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->okToShowLocked()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_6

    :cond_5
    invoke-virtual {p0, v4}, Lcom/android/server/am/ActivityStack;->addRecentActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    invoke-static {p3}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    return-void

    :cond_6
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v7, v3, p5}, Lcom/android/server/am/ActivityStackSupervisor;->moveFocusableActivityStackToFrontLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z

    if-eqz p2, :cond_9

    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    if-eqz v3, :cond_7

    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-static {p3}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    :goto_3
    const/4 v7, 0x0

    invoke-direct {p0, v5, p1, v7, p3}, Lcom/android/server/am/ActivityStack;->canEnterPipOnTaskSwitch(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/4 v7, 0x1

    iput-boolean v7, v5, Lcom/android/server/am/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    :cond_8
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    iget v8, p1, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    iget v8, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    const/16 v8, 0x7532

    invoke-static {v8, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    iget v8, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v7, v8}, Lcom/android/server/am/TaskChangeNotificationController;->notifyTaskMovedToFront(I)V

    return-void

    :cond_9
    const/16 v7, 0xa

    invoke-direct {p0, v7, p3}, Lcom/android/server/am/ActivityStack;->updateTransitLocked(ILandroid/app/ActivityOptions;)V

    goto :goto_3
.end method

.method moveToFront(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;Lcom/android/server/am/TaskRecord;)V

    return-void
.end method

.method moveToFront(Ljava/lang/String;Lcom/android/server/am/TaskRecord;)V
    .locals 4
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isAttached()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/android/server/am/ActivityStack;->findStackInsertIndex(Z)I

    move-result v1

    invoke-virtual {v0, v1, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p1, p0}, Lcom/android/server/am/ActivityStackSupervisor;->setFocusStackUnchecked(Ljava/lang/String;Lcom/android/server/am/ActivityStack;)V

    if-eqz p2, :cond_1

    invoke-direct {p0, p2, v2}, Lcom/android/server/am/ActivityStack;->insertTaskAtTop(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    invoke-virtual {p2}, Lcom/android/server/am/TaskRecord;->getWindowContainerController()Lcom/android/server/wm/TaskWindowContainerController;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/android/server/wm/StackWindowController;->positionChildAtTop(Lcom/android/server/wm/TaskWindowContainerController;Z)V

    :cond_2
    return-void
.end method

.method moveToFrontAndResumeStateIfNeeded(Lcom/android/server/am/ActivityRecord;ZZZLjava/lang/String;)V
    .locals 0
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "moveToFront"    # Z
    .param p3, "setResume"    # Z
    .param p4, "setPause"    # Z
    .param p5, "reason"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    if-nez p2, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    iput-object p1, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->updateLRUListLocked(Lcom/android/server/am/ActivityRecord;)Z

    :cond_1
    if-eqz p4, :cond_2

    iput-object p1, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStack;->schedulePauseTimeout(Lcom/android/server/am/ActivityRecord;)V

    :cond_2
    invoke-virtual {p0, p5}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    return-void
.end method

.method final navigateUpToLocked(Lcom/android/server/am/ActivityRecord;Landroid/content/Intent;ILandroid/content/Intent;)Z
    .locals 44
    .param p1, "srec"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "destIntent"    # Landroid/content/Intent;
    .param p3, "resultCode"    # I
    .param p4, "resultData"    # Landroid/content/Intent;

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v43

    .local v43, "task":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    .local v26, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v42

    .local v42, "start":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    move-object/from16 v0, v43

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-gez v42, :cond_1

    :cond_0
    const/4 v2, 0x0

    return v2

    :cond_1
    add-int/lit8 v31, v42, -0x1

    .local v31, "finishTo":I
    if-gez v31, :cond_3

    const/16 v35, 0x0

    :goto_0
    const/16 v32, 0x0

    .local v32, "foundParentInTask":Z
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v28

    .local v28, "dest":Landroid/content/ComponentName;
    if-lez v42, :cond_2

    if-eqz v28, :cond_2

    move/from16 v33, v31

    .local v33, "i":I
    :goto_1
    if-ltz v33, :cond_2

    move-object/from16 v0, v26

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/android/server/am/ActivityRecord;

    .local v39, "r":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v39

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual/range {v28 .. v28}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, v39

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual/range {v28 .. v28}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move/from16 v31, v33

    move-object/from16 v35, v39

    .local v35, "parent":Lcom/android/server/am/ActivityRecord;
    const/16 v32, 0x1

    .end local v33    # "i":I
    .end local v35    # "parent":Lcom/android/server/am/ActivityRecord;
    .end local v39    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v2, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    move-object/from16 v27, v0

    .local v27, "controller":Landroid/app/IActivityController;
    if-eqz v27, :cond_5

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Landroid/os/IBinder;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v34

    .local v34, "next":Lcom/android/server/am/ActivityRecord;
    if-eqz v34, :cond_5

    const/16 v41, 0x1

    .local v41, "resumeOK":Z
    :try_start_0
    move-object/from16 v0, v34

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/app/IActivityController;->activityResuming(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v41

    .end local v41    # "resumeOK":Z
    :goto_2
    if-nez v41, :cond_5

    const/4 v2, 0x0

    return v2

    .end local v27    # "controller":Landroid/app/IActivityController;
    .end local v28    # "dest":Landroid/content/ComponentName;
    .end local v32    # "foundParentInTask":Z
    .end local v34    # "next":Lcom/android/server/am/ActivityRecord;
    :cond_3
    move-object/from16 v0, v26

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/server/am/ActivityRecord;

    .restart local v35    # "parent":Lcom/android/server/am/ActivityRecord;
    goto :goto_0

    .end local v35    # "parent":Lcom/android/server/am/ActivityRecord;
    .restart local v28    # "dest":Landroid/content/ComponentName;
    .restart local v32    # "foundParentInTask":Z
    .restart local v33    # "i":I
    .restart local v39    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_4
    add-int/lit8 v33, v33, -0x1

    goto :goto_1

    .end local v33    # "i":I
    .end local v39    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v27    # "controller":Landroid/app/IActivityController;
    .restart local v34    # "next":Lcom/android/server/am/ActivityRecord;
    .restart local v41    # "resumeOK":Z
    :catch_0
    move-exception v30

    .local v30, "e":Landroid/os/RemoteException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    goto :goto_2

    .end local v30    # "e":Landroid/os/RemoteException;
    .end local v34    # "next":Lcom/android/server/am/ActivityRecord;
    .end local v41    # "resumeOK":Z
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v36

    .local v36, "origId":J
    move/from16 v33, v42

    .end local p4    # "resultData":Landroid/content/Intent;
    .restart local v33    # "i":I
    :goto_3
    move/from16 v0, v33

    move/from16 v1, v31

    if-le v0, v1, :cond_6

    move-object/from16 v0, v26

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/android/server/am/ActivityRecord;

    .restart local v39    # "r":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v39

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const-string/jumbo v6, "navigate-up"

    const/4 v7, 0x1

    move-object/from16 v2, p0

    move/from16 v4, p3

    move-object/from16 v5, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    const/16 p3, 0x0

    const/16 p4, 0x0

    .local p4, "resultData":Landroid/content/Intent;
    add-int/lit8 v33, v33, -0x1

    goto :goto_3

    .end local v39    # "r":Lcom/android/server/am/ActivityRecord;
    .end local p4    # "resultData":Landroid/content/Intent;
    :cond_6
    if-eqz v35, :cond_8

    if-eqz v32, :cond_8

    move-object/from16 v0, v35

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v2, Landroid/content/pm/ActivityInfo;->launchMode:I

    move/from16 v38, v0

    .local v38, "parentLaunchMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v29

    .local v29, "destIntentFlags":I
    const/4 v2, 0x3

    move/from16 v0, v38

    if-eq v0, v2, :cond_7

    const/4 v2, 0x2

    move/from16 v0, v38

    if-ne v0, v2, :cond_9

    :cond_7
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, v35

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;Ljava/lang/String;)V

    .end local v29    # "destIntentFlags":I
    .end local v38    # "parentLaunchMode":I
    :cond_8
    :goto_4
    invoke-static/range {v36 .. v37}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v32

    .restart local v29    # "destIntentFlags":I
    .restart local v38    # "parentLaunchMode":I
    :cond_9
    const/4 v2, 0x1

    move/from16 v0, v38

    if-eq v0, v2, :cond_7

    const/high16 v2, 0x4000000

    and-int v2, v2, v29

    if-nez v2, :cond_7

    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    const/4 v5, 0x0

    invoke-interface {v2, v3, v5, v4}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v7

    .local v7, "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mActivityStarter:Lcom/android/server/am/ActivityStarter;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, v35

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, v35

    iget v15, v0, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v35

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    move/from16 v18, v0

    const-string/jumbo v25, "navigateUpTo"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/16 v17, -0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x1

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v4, p2

    invoke-virtual/range {v2 .. v25}, Lcom/android/server/am/ActivityStarter;->startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ResolveInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILandroid/app/ActivityOptions;ZZ[Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v40

    .local v40, "res":I
    if-nez v40, :cond_a

    const/16 v32, 0x1

    .end local v7    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v40    # "res":I
    :goto_5
    move-object/from16 v0, v35

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const-string/jumbo v12, "navigate-top"

    const/4 v13, 0x1

    move-object/from16 v8, p0

    move/from16 v10, p3

    move-object/from16 v11, p4

    invoke-virtual/range {v8 .. v13}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    goto :goto_4

    .restart local v7    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v40    # "res":I
    :cond_a
    const/16 v32, 0x0

    goto :goto_5

    .end local v7    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v40    # "res":I
    :catch_1
    move-exception v30

    .restart local v30    # "e":Landroid/os/RemoteException;
    const/16 v32, 0x0

    goto :goto_5
.end method

.method notifyActivityDrawnLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 5
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v2, 0x0

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    .local v1, "waitingActivity":Lcom/android/server/am/ActivityRecord;
    iput-object v4, p0, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x6a

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v3, v4, v2}, Lcom/android/server/wm/WindowManagerService;->setWindowOpaque(Landroid/os/IBinder;Z)V

    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_2

    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_2

    :try_start_0
    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-interface {v3, v4, v2}, Landroid/app/IApplicationThread;->scheduleTranslucentConversionComplete(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "waitingActivity":Lcom/android/server/am/ActivityRecord;
    :cond_2
    :goto_0
    return-void

    .restart local v1    # "waitingActivity":Lcom/android/server/am/ActivityRecord;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method numActivities()I
    .locals 3

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v0, 0x0

    .local v0, "count":I
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "taskNdx":I
    :goto_0
    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method onActivityRemovedFromStack(Lcom/android/server/am/ActivityRecord;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v0, p1, :cond_0

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v0, p1, :cond_1

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    return-void
.end method

.method onLockTaskPackagesUpdatedLocked()V
    .locals 2

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "taskNdx":I
    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->setLockTaskAuth()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method onParentChanged()V
    .locals 1

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-super {p0}, Lcom/android/server/am/ConfigurationContainer;->onParentChanged()V

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->updateUIDsPresentOnDisplay()V

    return-void
.end method

.method positionChildAt(Lcom/android/server/am/TaskRecord;I)V
    .locals 7
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "index"    # I

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    if-eq v2, p0, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "AS.positionChildAt: task="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is not a child of stack="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " current parent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-virtual {p1, p0}, Lcom/android/server/am/TaskRecord;->updateOverrideConfigurationForStack(Lcom/android/server/am/ActivityStack;)V

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .local v0, "topRunningActivity":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v0, v2, :cond_3

    const/4 v1, 0x1

    .local v1, "wasResumed":Z
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ActivityStack;->insertTaskAtPosition(Lcom/android/server/am/TaskRecord;I)V

    invoke-virtual {p1, p0}, Lcom/android/server/am/TaskRecord;->setStack(Lcom/android/server/am/ActivityStack;)V

    const/4 v2, 0x1

    invoke-direct {p0, p1, v5, v2}, Lcom/android/server/am/ActivityStack;->postAddTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityStack;Z)V

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/server/am/ActivityStack;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mResumedActivity was already set when moving mResumedActivity from other stack to this stack mResumedActivity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " other mResumedActivity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    :cond_2
    invoke-virtual {p0, v5, v6, v6}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    return-void

    .end local v1    # "wasResumed":Z
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "wasResumed":Z
    goto :goto_0
.end method

.method positionChildWindowContainerAtTop(Lcom/android/server/am/TaskRecord;)V
    .locals 3
    .param p1, "child"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getWindowContainerController()Lcom/android/server/wm/TaskWindowContainerController;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/StackWindowController;->positionChildAtTop(Lcom/android/server/wm/TaskWindowContainerController;Z)V

    return-void
.end method

.method prepareFreezingTaskBounds()V
    .locals 1

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    invoke-virtual {v0}, Lcom/android/server/wm/StackWindowController;->prepareFreezingTaskBounds()V

    return-void
.end method

.method final rankTaskLayers(I)I
    .locals 6
    .param p1, "baseLayer"    # I

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v0, 0x0

    .local v0, "layer":I
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    .local v4, "taskNdx":I
    move v1, v0

    .end local v0    # "layer":I
    .local v1, "layer":I
    :goto_0
    if-ltz v4, :cond_2

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .local v3, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_0

    iget-boolean v5, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v5, :cond_0

    iget-boolean v5, v2, Lcom/android/server/am/ActivityRecord;->visible:Z

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1

    :cond_0
    const/4 v5, -0x1

    iput v5, v3, Lcom/android/server/am/TaskRecord;->mLayerRank:I

    move v0, v1

    .end local v1    # "layer":I
    .restart local v0    # "layer":I
    :goto_1
    add-int/lit8 v4, v4, -0x1

    move v1, v0

    .end local v0    # "layer":I
    .restart local v1    # "layer":I
    goto :goto_0

    :cond_1
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "layer":I
    .restart local v0    # "layer":I
    add-int v5, p1, v1

    iput v5, v3, Lcom/android/server/am/TaskRecord;->mLayerRank:I

    goto :goto_1

    .end local v0    # "layer":I
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v1    # "layer":I
    :cond_2
    return v1
.end method

.method final releaseSomeActivitiesLocked(Lcom/android/server/am/ProcessRecord;Landroid/util/ArraySet;Ljava/lang/String;)I
    .locals 10
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ProcessRecord;",
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    .local p2, "tasks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/am/TaskRecord;>;"
    const/4 v9, 0x1

    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v8

    div-int/lit8 v4, v8, 0x4

    .local v4, "maxTasks":I
    if-ge v4, v9, :cond_0

    const/4 v4, 0x1

    :cond_0
    const/4 v5, 0x0

    .local v5, "numReleased":I
    const/4 v7, 0x0

    .local v7, "taskNdx":I
    :goto_0
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_6

    if-lez v4, :cond_6

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/TaskRecord;

    .local v6, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {p2, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .local v3, "curNum":I
    iget-object v1, v6, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .local v1, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const/4 v0, 0x0

    .local v0, "actNdx":I
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_5

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .local v2, "activity":Lcom/android/server/am/ActivityRecord;
    iget-object v8, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v8, p1, :cond_4

    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->isDestroyable()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {p0, v2, v9, p3}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eq v8, v2, :cond_3

    add-int/lit8 v0, v0, -0x1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v2    # "activity":Lcom/android/server/am/ActivityRecord;
    :cond_5
    if-lez v3, :cond_1

    add-int/2addr v5, v3

    add-int/lit8 v4, v4, -0x1

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eq v8, v6, :cond_1

    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .end local v0    # "actNdx":I
    .end local v1    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v3    # "curNum":I
    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    :cond_6
    return v5
.end method

.method remove()V
    .locals 2

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-direct {p0}, Lcom/android/server/am/ActivityStack;->removeFromDisplay()V

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Landroid/util/SparseArray;

    iget v1, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    invoke-virtual {v0}, Lcom/android/server/wm/StackWindowController;->removeContainer()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->onParentChanged()V

    return-void
.end method

.method final removeActivitiesFromLRUListLocked(Lcom/android/server/am/TaskRecord;)V
    .locals 3
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v2, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "r$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_0
    return-void
.end method

.method removeTask(Lcom/android/server/am/TaskRecord;Ljava/lang/String;I)V
    .locals 11
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "mode"    # I

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v8, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "record$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .local v4, "record":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {p0, v4}, Lcom/android/server/am/ActivityStack;->onActivityRemovedFromStack(Lcom/android/server/am/ActivityRecord;)V

    goto :goto_0

    .end local v4    # "record":Lcom/android/server/am/ActivityRecord;
    :cond_0
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .local v6, "taskNdx":I
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v7, v8, -0x1

    .local v7, "topTaskNdx":I
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v8

    if-eqz v8, :cond_1

    if-ge v6, v7, :cond_1

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .local v3, "nextTask":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->isOverAssistantStack()Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    .end local v3    # "nextTask":Lcom/android/server/am/TaskRecord;
    :cond_1
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->removeActivitiesFromLRUListLocked(Lcom/android/server/am/TaskRecord;)V

    const/4 v8, 0x1

    invoke-direct {p0, p1, v8}, Lcom/android/server/am/ActivityStack;->updateTaskMovement(Lcom/android/server/am/TaskRecord;Z)V

    if-nez p3, :cond_5

    iget-object v8, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, p1, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v8, :cond_b

    const/4 v1, 0x1

    .local v1, "isVoiceSession":Z
    :goto_1
    if-eqz v1, :cond_2

    :try_start_0
    iget-object v8, p1, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object v9, p1, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    iget v10, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-interface {v8, v9, v10}, Landroid/service/voice/IVoiceInteractionSession;->taskFinished(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_2
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->autoRemoveFromRecents()Z

    move-result v8

    if-nez v8, :cond_3

    if-eqz v1, :cond_4

    :cond_3
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-virtual {v8, p1}, Lcom/android/server/am/RecentTasks;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->removedFromRecents()V

    :cond_4
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->removeWindowContainer()V

    .end local v1    # "isVoiceSession":Z
    :cond_5
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    move-result v8

    if-eqz v8, :cond_7

    const/4 v8, 0x2

    if-eq p3, v8, :cond_7

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v8, p0}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v8

    if-eqz v8, :cond_7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " leftTaskHistoryEmpty"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, "myReason":Ljava/lang/String;
    iget-boolean v8, p0, Lcom/android/server/am/ActivityStack;->mFullscreen:Z

    if-nez v8, :cond_6

    invoke-direct {p0, v2}, Lcom/android/server/am/ActivityStack;->adjustFocusToNextFocusableStackLocked(Ljava/lang/String;)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_7

    :cond_6
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v8, v2}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStackToFront(Ljava/lang/String;)V

    .end local v2    # "myReason":Ljava/lang/String;
    :cond_7
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v8, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_8
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isHomeOrRecentsStack()Z

    move-result v8

    if-nez v8, :cond_9

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->remove()V

    :cond_9
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Lcom/android/server/am/TaskRecord;->setStack(Lcom/android/server/am/ActivityStack;)V

    iget v8, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v9, 0x4

    if-ne v8, v9, :cond_a

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mTaskChangeNotificationController:Lcom/android/server/am/TaskChangeNotificationController;

    invoke-virtual {v8}, Lcom/android/server/am/TaskChangeNotificationController;->notifyActivityUnpinned()V

    :cond_a
    return-void

    :cond_b
    const/4 v1, 0x0

    .restart local v1    # "isVoiceSession":Z
    goto/16 :goto_1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_2
.end method

.method removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->finishLaunchTickingLocked()V

    return-void
.end method

.method reparent(Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;Z)V
    .locals 4
    .param p1, "activityDisplay"    # Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    .param p2, "onTop"    # Z

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/server/am/ActivityStack;->removeFromDisplay()V

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/am/ActivityStack;->postAddToDisplay(Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;Landroid/graphics/Rect;Z)V

    const-string/jumbo v0, "reparent"

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/server/am/ActivityStack;->adjustFocusToNextFocusableStackLocked(Ljava/lang/String;Z)Z

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, v1, v3, v3}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    iget v1, p1, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2, p2}, Lcom/android/server/wm/StackWindowController;->reparent(ILandroid/graphics/Rect;Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method final requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/content/Intent;
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "oomAdj"    # Z

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    const/4 v0, 0x1

    return v0
.end method

.method public requestResize(Landroid/graphics/Rect;)V
    .locals 7
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v1, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v3, 0x1

    const/4 v6, -0x1

    move-object v2, p1

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityManagerService;->resizeStack(ILandroid/graphics/Rect;ZZZI)V

    return-void
.end method

.method final resetTaskIfNeededLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 10
    .param p1, "taskTop"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "newActivity"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v4, 0x1

    .local v4, "forceReset":Z
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v2

    .local v2, "task":Lcom/android/server/am/TaskRecord;
    const/4 v3, 0x0

    .local v3, "taskFound":Z
    const/4 v9, 0x0

    .local v9, "topOptions":Landroid/app/ActivityOptions;
    const/4 v5, -0x1

    .local v5, "reparentInsertionPoint":I
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v6, v0, -0x1

    .end local v9    # "topOptions":Landroid/app/ActivityOptions;
    .local v6, "i":I
    :goto_1
    if-ltz v6, :cond_2

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    .local v1, "targetTask":Lcom/android/server/am/TaskRecord;
    if-ne v1, v2, :cond_1

    invoke-direct {p0, v2, v4}, Lcom/android/server/am/ActivityStack;->resetTargetTaskIfNeededLocked(Lcom/android/server/am/TaskRecord;Z)Landroid/app/ActivityOptions;

    move-result-object v9

    .local v9, "topOptions":Landroid/app/ActivityOptions;
    const/4 v3, 0x1

    .end local v9    # "topOptions":Landroid/app/ActivityOptions;
    :goto_2
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .end local v1    # "targetTask":Lcom/android/server/am/TaskRecord;
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    .end local v3    # "taskFound":Z
    .end local v4    # "forceReset":Z
    .end local v5    # "reparentInsertionPoint":I
    .end local v6    # "i":I
    :cond_0
    const/4 v4, 0x0

    .restart local v4    # "forceReset":Z
    goto :goto_0

    .restart local v1    # "targetTask":Lcom/android/server/am/TaskRecord;
    .restart local v2    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v3    # "taskFound":Z
    .restart local v5    # "reparentInsertionPoint":I
    .restart local v6    # "i":I
    :cond_1
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->resetAffinityTaskIfNeededLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;ZZI)I

    move-result v5

    goto :goto_2

    .end local v1    # "targetTask":Lcom/android/server/am/TaskRecord;
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .local v7, "taskNdx":I
    if-ltz v7, :cond_4

    :goto_3
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    add-int/lit8 v8, v7, -0x1

    .end local v7    # "taskNdx":I
    .local v8, "taskNdx":I
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object p1

    if-nez p1, :cond_3

    if-ltz v8, :cond_3

    move v7, v8

    .end local v8    # "taskNdx":I
    .restart local v7    # "taskNdx":I
    goto :goto_3

    .end local v7    # "taskNdx":I
    .restart local v8    # "taskNdx":I
    :cond_3
    move v7, v8

    .end local v8    # "taskNdx":I
    .restart local v7    # "taskNdx":I
    :cond_4
    if-eqz v9, :cond_5

    if-eqz p1, :cond_6

    invoke-virtual {p1, v9}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    :cond_5
    :goto_4
    return-object p1

    :cond_6
    invoke-virtual {v9}, Landroid/app/ActivityOptions;->abort()V

    goto :goto_4
.end method

.method resize(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 8
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "tempTaskBounds"    # Landroid/graphics/Rect;
    .param p3, "tempTaskInsetBounds"    # Landroid/graphics/Rect;

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-static {p1}, Lcom/android/server/am/TaskRecord;->validateBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/ActivityStack;->updateBoundsAllowed(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_3

    move-object v3, p2

    .local v3, "taskBounds":Landroid/graphics/Rect;
    :goto_0
    if-eqz p3, :cond_4

    move-object v1, p3

    .local v1, "insetBounds":Landroid/graphics/Rect;
    :goto_1
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTmpBounds:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTmpConfigs:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTmpInsetBounds:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_2
    if-ltz v0, :cond_6

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .local v2, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    iget-object v5, v2, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-static {v4, p1}, Lcom/android/server/am/ActivityStack;->fitWithinBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Z

    :cond_1
    :goto_3
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTmpConfigs:Landroid/util/SparseArray;

    iget v5, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTmpBounds:Landroid/util/SparseArray;

    iget v5, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v6, v2, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-eqz p3, :cond_2

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTmpInsetBounds:Landroid/util/SparseArray;

    iget v5, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v4, v5, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .end local v0    # "i":I
    .end local v1    # "insetBounds":Landroid/graphics/Rect;
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    .end local v3    # "taskBounds":Landroid/graphics/Rect;
    :cond_3
    move-object v3, p1

    .restart local v3    # "taskBounds":Landroid/graphics/Rect;
    goto :goto_0

    :cond_4
    move-object v1, v3

    .restart local v1    # "insetBounds":Landroid/graphics/Rect;
    goto :goto_1

    .restart local v0    # "i":I
    .restart local v2    # "task":Lcom/android/server/am/TaskRecord;
    :cond_5
    invoke-virtual {v2, v3, v1}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    goto :goto_3

    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    :cond_6
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTmpConfigs:Landroid/util/SparseArray;

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mTmpBounds:Landroid/util/SparseArray;

    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mTmpInsetBounds:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, v5, v6, v7}, Lcom/android/server/wm/StackWindowController;->resize(Landroid/graphics/Rect;Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/util/SparseArray;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/am/ActivityStack;->mFullscreen:Z

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method restartPackage(Ljava/lang/String;)Lcom/android/server/am/ActivityRecord;
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .local v3, "starting":Lcom/android/server/am/ActivityRecord;
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    .local v4, "taskNdx":I
    :goto_0
    if-ltz v4, :cond_2

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    iget-object v1, v5, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .local v1, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .local v2, "activityNdx":I
    :goto_1
    if-ltz v2, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    .local v0, "a":Lcom/android/server/am/ActivityRecord;
    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    if-eqz v3, :cond_0

    if-ne v0, v3, :cond_0

    iget-boolean v5, v0, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v5, :cond_0

    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/16 v6, 0x100

    invoke-virtual {v0, v5, v6}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .end local v0    # "a":Lcom/android/server/am/ActivityRecord;
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .end local v1    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v2    # "activityNdx":I
    :cond_2
    return-object v3
.end method

.method resumeTopActivityUncheckedLocked(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z
    .locals 6
    .param p1, "prev"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "options"    # Landroid/app/ActivityOptions;

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->inResumeTopActivity:Z

    if-eqz v2, :cond_0

    return v4

    :cond_0
    const/4 v1, 0x0

    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/am/ActivityStackSupervisor;->inResumeTopActivity:Z

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ActivityStack;->resumeTopActivityInnerLocked(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .local v1, "result":Z
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-boolean v4, v2, Lcom/android/server/am/ActivityStackSupervisor;->inResumeTopActivity:Z

    invoke-direct {p0, v5}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .local v0, "next":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->canTurnScreenOn()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->checkReadyForSleep()V

    :cond_2
    return v1

    .end local v0    # "next":Lcom/android/server/am/ActivityRecord;
    .local v1, "result":Z
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-boolean v4, v3, Lcom/android/server/am/ActivityStackSupervisor;->inResumeTopActivity:Z

    throw v2
.end method

.method final safelyDestroyActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z
    .locals 1
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isDestroyable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final scheduleDestroyActivities(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 3
    .param p1, "owner"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x69

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    new-instance v1, Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;

    invoke-direct {v1, p1, p2}, Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;-><init>(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V
    .locals 9
    .param p1, "callingUid"    # I
    .param p2, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "resultWho"    # Ljava/lang/String;
    .param p4, "requestCode"    # I
    .param p5, "resultCode"    # I
    .param p6, "data"    # Landroid/content/Intent;

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v8, 0x0

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;

    move-result-object v4

    iget v5, p2, Lcom/android/server/am/ActivityRecord;->userId:I

    move v1, p1

    move-object v3, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->grantUriPermissionFromIntentLocked(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/am/UriPermissionOwner;I)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v0, p2, :cond_1

    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_1

    :try_start_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .local v7, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    new-instance v0, Landroid/app/ResultInfo;

    invoke-direct {v0, p3, p4, p5, p6}, Landroid/app/ResultInfo;-><init>(Ljava/lang/String;IILandroid/content/Intent;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v0, v1, v7}, Landroid/app/IApplicationThread;->scheduleSendResult(Landroid/os/IBinder;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .end local v7    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    :catch_0
    move-exception v6

    .local v6, "e":Ljava/lang/Exception;
    sget-object v0, Lcom/android/server/am/ActivityStack;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception thrown sending result to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v6    # "e":Ljava/lang/Exception;
    :cond_1
    move-object v0, p2

    move-object v1, v8

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityRecord;->addResultLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    return-void
.end method

.method setBounds(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/server/am/ActivityStack;->mFullscreen:Z

    if-eqz v1, :cond_1

    :goto_0
    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mBounds:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskPositioner:Lcom/android/server/am/LaunchingTaskPositioner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskPositioner:Lcom/android/server/am/LaunchingTaskPositioner;

    invoke-virtual {v0, p1}, Lcom/android/server/am/LaunchingTaskPositioner;->configure(Landroid/graphics/Rect;)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method setLaunchTime(Lcom/android/server/am/ActivityRecord;)V
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const-wide/16 v2, 0x0

    iget-wide v0, p1, Lcom/android/server/am/ActivityRecord;->displayStartTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/am/ActivityRecord;->displayStartTime:J

    iput-wide v0, p1, Lcom/android/server/am/ActivityRecord;->fullyDrawnStartTime:J

    iget-wide v0, p0, Lcom/android/server/am/ActivityStack;->mLaunchStartTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityStack;->startLaunchTraces(Ljava/lang/String;)V

    iget-wide v0, p1, Lcom/android/server/am/ActivityRecord;->displayStartTime:J

    iput-wide v0, p0, Lcom/android/server/am/ActivityStack;->mFullyDrawnStartTime:J

    iput-wide v0, p0, Lcom/android/server/am/ActivityStack;->mLaunchStartTime:J

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-wide v0, p0, Lcom/android/server/am/ActivityStack;->mLaunchStartTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityStack;->startLaunchTraces(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ActivityStack;->mFullyDrawnStartTime:J

    iput-wide v0, p0, Lcom/android/server/am/ActivityStack;->mLaunchStartTime:J

    goto :goto_0
.end method

.method setResumedActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iput-object p1, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v1, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/am/ActivityManagerService;->setResumedActivityUncheckLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .local v0, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-virtual {v1, v0}, Lcom/android/server/am/RecentTasks;->addLocked(Lcom/android/server/am/TaskRecord;)V

    return-void
.end method

.method shouldBeVisible(Lcom/android/server/am/ActivityRecord;)I
    .locals 13
    .param p1, "starting"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v12, 0x3

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isAttached()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-boolean v8, p0, Lcom/android/server/am/ActivityStack;->mForceHidden:Z

    if-eqz v8, :cond_1

    :cond_0
    return v10

    :cond_1
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v8, p0}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStackOnDisplay(Lcom/android/server/am/ActivityStack;)Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v8, p0}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_2
    return v9

    :cond_3
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v8, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .local v5, "stackIndex":I
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ne v5, v8, :cond_4

    sget-object v8, Lcom/android/server/am/ActivityStack;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Stack="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v11, " isn\'t front stack but is at the top of the stack list"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    :cond_4
    invoke-direct {p0}, Lcom/android/server/am/ActivityStack;->getTopStackOnDisplay()Lcom/android/server/am/ActivityStack;

    move-result-object v6

    .local v6, "topStack":Lcom/android/server/am/ActivityStack;
    iget v7, v6, Lcom/android/server/am/ActivityStack;->mStackId:I

    .local v7, "topStackId":I
    iget v8, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    if-ne v8, v12, :cond_7

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->isAssistantStack()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-direct {v6, p1, v12}, Lcom/android/server/am/ActivityStack;->isStackTranslucent(Lcom/android/server/am/ActivityRecord;I)Z

    move-result v8

    if-eqz v8, :cond_5

    move v8, v9

    :goto_0
    return v8

    :cond_5
    move v8, v10

    goto :goto_0

    :cond_6
    return v9

    :cond_7
    iget v8, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    if-nez v8, :cond_8

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v11, v12}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .local v0, "dockedStackIndex":I
    if-le v0, v5, :cond_8

    add-int/lit8 v8, v0, -0x1

    if-eq v5, v8, :cond_8

    return v10

    .end local v0    # "dockedStackIndex":I
    :cond_8
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    add-int/lit8 v4, v8, -0x1

    .local v4, "stackBehindTopIndex":I
    :goto_1
    if-ltz v4, :cond_9

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v8

    if-nez v8, :cond_9

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_9
    if-ltz v4, :cond_b

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityStack;

    iget v3, v8, Lcom/android/server/am/ActivityStack;->mStackId:I

    .local v3, "stackBehindTopId":I
    :goto_2
    if-eq v7, v12, :cond_a

    invoke-static {v7}, Landroid/app/ActivityManager$StackId;->isAlwaysOnTop(I)Z

    move-result v8

    if-eqz v8, :cond_f

    :cond_a
    if-ne v5, v4, :cond_c

    return v9

    .end local v3    # "stackBehindTopId":I
    :cond_b
    const/4 v3, -0x1

    .restart local v3    # "stackBehindTopId":I
    goto :goto_2

    :cond_c
    invoke-static {v7}, Landroid/app/ActivityManager$StackId;->isAlwaysOnTop(I)Z

    move-result v8

    if-eqz v8, :cond_f

    add-int/lit8 v8, v4, -0x1

    if-ne v5, v8, :cond_f

    if-ne v3, v12, :cond_d

    return v9

    :cond_d
    const/4 v8, 0x6

    if-ne v3, v8, :cond_f

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityStack;

    iget v11, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-direct {v8, p1, v11}, Lcom/android/server/am/ActivityStack;->isStackTranslucent(Lcom/android/server/am/ActivityRecord;I)Z

    move-result v8

    if-eqz v8, :cond_e

    :goto_3
    return v9

    :cond_e
    move v9, v10

    goto :goto_3

    :cond_f
    invoke-static {v7}, Landroid/app/ActivityManager$StackId;->isBackdropToTranslucentActivity(I)Z

    move-result v8

    if-eqz v8, :cond_12

    invoke-direct {v6, p1, v3}, Lcom/android/server/am/ActivityStack;->isStackTranslucent(Lcom/android/server/am/ActivityRecord;I)Z

    move-result v8

    if-eqz v8, :cond_12

    if-ne v5, v4, :cond_10

    return v9

    :cond_10
    if-ltz v4, :cond_12

    if-eq v3, v12, :cond_11

    const/4 v8, 0x4

    if-ne v3, v8, :cond_12

    :cond_11
    add-int/lit8 v8, v4, -0x1

    if-ne v5, v8, :cond_12

    return v9

    :cond_12
    iget v8, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-static {v8}, Landroid/app/ActivityManager$StackId;->isStaticStack(I)Z

    move-result v8

    if-eqz v8, :cond_13

    return v10

    :cond_13
    add-int/lit8 v1, v5, 0x1

    .local v1, "i":I
    :goto_4
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v1, v8, :cond_17

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    iget-boolean v8, v2, Lcom/android/server/am/ActivityStack;->mFullscreen:Z

    if-nez v8, :cond_15

    invoke-direct {v2}, Lcom/android/server/am/ActivityStack;->hasFullscreenTask()Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_15

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_15
    iget v8, v2, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-static {v8}, Landroid/app/ActivityManager$StackId;->isDynamicStacksVisibleBehindAllowed(I)Z

    move-result v8

    if-nez v8, :cond_16

    return v10

    :cond_16
    const/4 v8, -0x1

    invoke-direct {v2, p1, v8}, Lcom/android/server/am/ActivityStack;->isStackTranslucent(Lcom/android/server/am/ActivityRecord;I)Z

    move-result v8

    if-nez v8, :cond_14

    return v10

    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_17
    return v9
.end method

.method shouldSleepActivities()Z
    .locals 2

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getDisplay()Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    move-result-object v0

    .local v0, "display":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->isSleeping()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->isSleepingLocked()Z

    move-result v1

    goto :goto_0
.end method

.method shouldSleepOrShutDownActivities()Z
    .locals 1

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->shouldSleepActivities()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->isShuttingDownLocked()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method final shouldUpRecreateTaskLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z
    .locals 7
    .param p1, "srec"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "destAffinity"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-nez v3, :cond_1

    :cond_0
    return v5

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_0

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    .local v1, "task":Lcom/android/server/am/TaskRecord;
    iget-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v3, :cond_5

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->isDocument()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    move-result v3

    if-eqz v3, :cond_2

    return v5

    :cond_2
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .local v2, "taskIdx":I
    if-gtz v2, :cond_3

    sget-object v3, Lcom/android/server/am/ActivityStack;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "shouldUpRecreateTask: task not in history for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_3
    if-nez v2, :cond_4

    return v5

    :cond_4
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    .local v0, "prevTask":Lcom/android/server/am/TaskRecord;
    iget-object v3, v1, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    return v5

    .end local v0    # "prevTask":Lcom/android/server/am/TaskRecord;
    .end local v2    # "taskIdx":I
    :cond_5
    return v6
.end method

.method final startActivityLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;ZZLandroid/app/ActivityOptions;)V
    .locals 17
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "focusedTopActivity"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "newTask"    # Z
    .param p4, "keepCurTransition"    # Z
    .param p5, "options"    # Landroid/app/ActivityOptions;

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v8

    .local v8, "rTask":Lcom/android/server/am/TaskRecord;
    iget v11, v8, Lcom/android/server/am/TaskRecord;->taskId:I

    .local v11, "taskId":I
    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    if-nez v14, :cond_1

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/server/am/ActivityStack;->taskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v14

    if-eqz v14, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v8, v1}, Lcom/android/server/am/ActivityStack;->insertTaskAtTop(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;)V

    :cond_1
    const/4 v10, 0x0

    .local v10, "task":Lcom/android/server/am/TaskRecord;
    if-nez p3, :cond_5

    const/4 v9, 0x1

    .local v9, "startIt":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v12, v14, -0x1

    .end local v10    # "task":Lcom/android/server/am/TaskRecord;
    .local v12, "taskNdx":I
    :goto_0
    if-ltz v12, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/TaskRecord;

    .local v10, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v10}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v14

    if-nez v14, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v12, v12, -0x1

    goto :goto_0

    :cond_3
    if-ne v10, v8, :cond_4

    if-nez v9, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->createWindowContainer()V

    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    return-void

    :cond_4
    iget v14, v10, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    if-lez v14, :cond_2

    const/4 v9, 0x0

    goto :goto_1

    .end local v9    # "startIt":Z
    .end local v10    # "task":Lcom/android/server/am/TaskRecord;
    .end local v12    # "taskNdx":I
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v4

    .local v4, "activityTask":Lcom/android/server/am/TaskRecord;
    if-ne v10, v4, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    if-eq v14, v15, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v15, 0x0

    iput-boolean v15, v14, Lcom/android/server/am/ActivityStackSupervisor;->mUserLeaving:Z

    :cond_6
    move-object v10, v4

    .restart local v10    # "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getWindowContainerController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v14

    if-nez v14, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->createWindowContainer()V

    :cond_7
    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->setFrontOfTask()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->isHomeOrRecentsStack()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->numActivities()I

    move-result v14

    if-lez v14, :cond_14

    :cond_8
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v14}, Landroid/content/Intent;->getFlags()I

    move-result v14

    const/high16 v15, 0x10000

    and-int/2addr v14, v15

    if-eqz v14, :cond_b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v15, 0x0

    move/from16 v0, p4

    invoke-virtual {v14, v15, v0}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    const/4 v5, 0x1

    .local v5, "doShow":Z
    if-eqz p3, :cond_10

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v14}, Landroid/content/Intent;->getFlags()I

    move-result v14

    const/high16 v15, 0x200000

    and-int/2addr v14, v15

    if-eqz v14, :cond_9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityStack;->resetTaskIfNeededLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v14

    move-object/from16 v0, p1

    if-ne v14, v0, :cond_f

    const/4 v5, 0x1

    :cond_9
    :goto_3
    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v14, :cond_11

    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/android/server/am/ActivityRecord;->setVisibility(Z)V

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    .end local v5    # "doShow":Z
    :cond_a
    :goto_4
    return-void

    :cond_b
    const/4 v13, 0x6

    .local v13, "transit":I
    if-eqz p3, :cond_c

    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v14, :cond_d

    const/16 v13, 0x10

    :cond_c
    :goto_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move/from16 v0, p4

    invoke-virtual {v14, v13, v0}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_d
    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, p5

    invoke-direct {v0, v1, v14, v2, v3}, Lcom/android/server/am/ActivityStack;->canEnterPipOnTaskSwitch(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v14

    if-eqz v14, :cond_e

    const/4 v14, 0x1

    move-object/from16 v0, p2

    iput-boolean v14, v0, Lcom/android/server/am/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    :cond_e
    const/16 v13, 0x8

    goto :goto_5

    .end local v13    # "transit":I
    .restart local v5    # "doShow":Z
    :cond_f
    const/4 v5, 0x0

    goto :goto_3

    :cond_10
    if-eqz p5, :cond_9

    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getAnimationType()I

    move-result v14

    const/4 v15, 0x5

    if-ne v14, v15, :cond_9

    const/4 v5, 0x0

    goto :goto_3

    :cond_11
    if-eqz v5, :cond_a

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v7

    .local v7, "prevTask":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v7}, Lcom/android/server/am/TaskRecord;->topRunningActivityWithStartingWindowLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    .local v6, "prev":Lcom/android/server/am/ActivityRecord;
    if-eqz v6, :cond_12

    invoke-virtual {v6}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v14

    if-eq v14, v7, :cond_13

    const/4 v6, 0x0

    .end local v6    # "prev":Lcom/android/server/am/ActivityRecord;
    :cond_12
    :goto_6
    invoke-direct/range {p0 .. p2}, Lcom/android/server/am/ActivityStack;->isTaskSwitch(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Z

    move-result v14

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v0, v6, v1, v14}, Lcom/android/server/am/ActivityRecord;->showStartingWindow(Lcom/android/server/am/ActivityRecord;ZZ)V

    goto :goto_4

    .restart local v6    # "prev":Lcom/android/server/am/ActivityRecord;
    :cond_13
    iget-boolean v14, v6, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v14, :cond_12

    const/4 v6, 0x0

    .local v6, "prev":Lcom/android/server/am/ActivityRecord;
    goto :goto_6

    .end local v5    # "doShow":Z
    .end local v6    # "prev":Lcom/android/server/am/ActivityRecord;
    .end local v7    # "prevTask":Lcom/android/server/am/TaskRecord;
    :cond_14
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    goto :goto_4
.end method

.method final startPausingLocked(ZZLcom/android/server/am/ActivityRecord;Z)Z
    .locals 9
    .param p1, "userLeaving"    # Z
    .param p2, "uiSleeping"    # Z
    .param p3, "resuming"    # Lcom/android/server/am/ActivityRecord;
    .param p4, "pauseImmediately"    # Z

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/ActivityStack;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Going to pause when pause is already pending for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->shouldSleepActivities()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0, p3}, Lcom/android/server/am/ActivityStack;->completePauseLocked(ZLcom/android/server/am/ActivityRecord;)V

    :cond_0
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .local v8, "prev":Lcom/android/server/am/ActivityRecord;
    if-nez v8, :cond_2

    if-nez p3, :cond_1

    sget-object v0, Lcom/android/server/am/ActivityStack;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Trying to pause when nothing is resumed"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iput-object v8, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    iput-object v8, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v8, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    if-nez v0, :cond_3

    iget-object v0, v8, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_8

    :cond_3
    move-object v0, v8

    :goto_0
    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v0, v8, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    invoke-direct {p0, v8}, Lcom/android/server/am/ActivityStack;->clearLaunchTime(Lcom/android/server/am/ActivityRecord;)V

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    .local v7, "next":Lcom/android/server/am/ActivityRecord;
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mHasRecents:Z

    if-eqz v0, :cond_5

    if-eqz v7, :cond_4

    iget-boolean v0, v7, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    if-nez v0, :cond_4

    invoke-virtual {v7}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    invoke-virtual {v8}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    if-eq v0, v1, :cond_9

    :cond_4
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, v8, Lcom/android/server/am/ActivityRecord;->mUpdateTaskThumbnailWhenHidden:Z

    :cond_5
    invoke-direct {p0}, Lcom/android/server/am/ActivityStack;->stopFullyDrawnTraceIfNeeded()V

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateCpuStats()V

    iget-object v0, v8, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_a

    iget-object v0, v8, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_a

    const/4 v0, 0x3

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    iget v1, v8, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v8}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, v8, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/16 v1, 0x753d

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, v8, v1}, Lcom/android/server/am/ActivityManagerService;->updateUsageStats(Lcom/android/server/am/ActivityRecord;Z)V

    iget-object v0, v8, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v1, v8, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-boolean v2, v8, Lcom/android/server/am/ActivityRecord;->finishing:Z

    iget v4, v8, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    move v3, p1

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/app/IApplicationThread;->schedulePauseActivity(Landroid/os/IBinder;ZZIZ)V

    iget-object v0, v8, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-boolean v1, v8, Lcom/android/server/am/ActivityRecord;->finishing:Z

    invoke-static {v0, v1, p1}, Lcom/android/server/am/PreventRunningUtils;->onUserLeavingActivity(Landroid/os/IBinder;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    if-nez p2, :cond_6

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->isSleepingOrShuttingDownLocked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->acquireLaunchWakelock()V

    :cond_6
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_c

    if-nez p2, :cond_7

    invoke-virtual {v8}, Lcom/android/server/am/ActivityRecord;->pauseKeyDispatchingLocked()V

    :cond_7
    if-eqz p4, :cond_b

    const/4 v0, 0x0

    invoke-direct {p0, v0, p3}, Lcom/android/server/am/ActivityStack;->completePauseLocked(ZLcom/android/server/am/ActivityRecord;)V

    const/4 v0, 0x0

    return v0

    .end local v7    # "next":Lcom/android/server/am/ActivityRecord;
    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_0

    .restart local v7    # "next":Lcom/android/server/am/ActivityRecord;
    :cond_9
    if-eqz p2, :cond_5

    goto :goto_1

    :catch_0
    move-exception v6

    .local v6, "e":Ljava/lang/Exception;
    sget-object v0, Lcom/android/server/am/ActivityStack;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Exception thrown during pause"

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    goto :goto_2

    .end local v6    # "e":Ljava/lang/Exception;
    :cond_a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    goto :goto_2

    :cond_b
    invoke-direct {p0, v8}, Lcom/android/server/am/ActivityStack;->schedulePauseTimeout(Lcom/android/server/am/ActivityRecord;)V

    const/4 v0, 0x1

    return v0

    :cond_c
    if-nez p3, :cond_d

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method final stopActivityLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 9
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v3, 0x0

    const/4 v8, 0x1

    const/4 v2, 0x0

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->shouldSleepActivities()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const-string/jumbo v4, "stop-no-history"

    move-object v0, p0

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->resumeKeyDispatchingLocked()V

    return-void

    :cond_1
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_4

    const-string/jumbo v0, "stopActivity"

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/ActivityStack;->adjustFocusedActivityStackLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->resumeKeyDispatchingLocked()V

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/am/ActivityRecord;->setVisible(Z)V

    :cond_2
    iget v0, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/server/am/EventLogTags;->writeAmStopActivity(IILjava/lang/String;)V

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-boolean v2, p1, Lcom/android/server/am/ActivityRecord;->visible:Z

    iget v3, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    invoke-interface {v0, v1, v2, v3}, Landroid/app/IApplicationThread;->scheduleStopActivity(Landroid/os/IBinder;ZI)V

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->shouldSleepOrShutDownActivities()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/am/ActivityRecord;->setSleeping(Z)V

    :cond_3
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .local v7, "msg":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v7, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v7    # "msg":Landroid/os/Message;
    :cond_4
    :goto_0
    return-void

    :catch_0
    move-exception v6

    .local v6, "e":Ljava/lang/Exception;
    sget-object v0, Lcom/android/server/am/ActivityStack;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Exception thrown during pause"

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-boolean v8, p1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->deferRelaunchUntilPaused:Z

    if-eqz v0, :cond_4

    const-string/jumbo v0, "stop-except"

    invoke-virtual {p0, p1, v8, v0}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    goto :goto_0
.end method

.method final switchUserLocked(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget v3, p0, Lcom/android/server/am/ActivityStack;->mCurrentUser:I

    if-ne v3, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/server/am/ActivityStack;->mCurrentUser:I

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "index":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .local v2, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->okToShowLocked()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    :cond_2
    return-void
.end method

.method taskForIdLocked(I)Lcom/android/server/am/TaskRecord;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "taskNdx":I
    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    .local v0, "task":Lcom/android/server/am/TaskRecord;
    iget v2, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v2, p1, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .end local v0    # "task":Lcom/android/server/am/TaskRecord;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ActivityStack{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " stackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " tasks}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final topActivity()Lcom/android/server/am/ActivityRecord;
    .locals 5

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .local v3, "taskNdx":I
    :goto_0
    if-ltz v3, :cond_2

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    iget-object v0, v4, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "activityNdx":I
    :goto_1
    if-ltz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v4, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v4, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    :cond_2
    const/4 v4, 0x0

    return-object v4
.end method

.method topActivityOccludesKeyguard()Z
    .locals 1

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStack;->mTopActivityOccludesKeyguard:Z

    return v0
.end method

.method topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;
    .locals 1

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method final topRunningActivityLocked(Landroid/os/IBinder;I)Lcom/android/server/am/ActivityRecord;
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "taskId"    # I

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    .local v4, "taskNdx":I
    :goto_0
    if-ltz v4, :cond_3

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .local v3, "task":Lcom/android/server/am/TaskRecord;
    iget v5, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v5, p2, :cond_1

    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v5, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v5, :cond_2

    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    if-eq p1, v5, :cond_2

    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->okToShowLocked()Z

    move-result v5

    if-eqz v5, :cond_2

    return-object v2

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "i":I
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    :cond_3
    const/4 v5, 0x0

    return-object v5
.end method

.method topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 6
    .param p1, "notTop"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    .local v4, "taskNdx":I
    :goto_0
    if-ltz v4, :cond_2

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .local v3, "task":Lcom/android/server/am/TaskRecord;
    iget-object v0, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "activityNdx":I
    :goto_1
    if-ltz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v5, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v5, :cond_0

    iget-boolean v5, v2, Lcom/android/server/am/ActivityRecord;->delayedResume:Z

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    if-eq v2, p1, :cond_0

    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->okToShowLocked()Z

    move-result v5

    if-eqz v5, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    :cond_2
    const/4 v5, 0x0

    return-object v5
.end method

.method topRunningNonOverlayTaskActivity()Lcom/android/server/am/ActivityRecord;
    .locals 6

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    .local v4, "taskNdx":I
    :goto_0
    if-ltz v4, :cond_2

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .local v3, "task":Lcom/android/server/am/TaskRecord;
    iget-object v0, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "activityNdx":I
    :goto_1
    if-ltz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v5, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v5, :cond_0

    iget-boolean v5, v2, Lcom/android/server/am/ActivityRecord;->mTaskOverlay:Z

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    :cond_2
    const/4 v5, 0x0

    return-object v5
.end method

.method final topTask()Lcom/android/server/am/TaskRecord;
    .locals 3

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "size":I
    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method unhandledBackLocked()V
    .locals 9

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v8, v0, -0x1

    .local v8, "top":I
    if-ltz v8, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    iget-object v6, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .local v6, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v7, v0, -0x1

    .local v7, "activityTop":I
    if-ltz v7, :cond_0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    const-string/jumbo v4, "unhandled-back"

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .end local v6    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v7    # "activityTop":I
    :cond_0
    return-void
.end method

.method updateActivityApplicationInfoLocked(Landroid/content/pm/ApplicationInfo;)V
    .locals 7
    .param p1, "aInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .local v3, "packageName":Ljava/lang/String;
    iget v6, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .local v5, "userId":I
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    .local v4, "taskNdx":I
    :goto_0
    if-ltz v4, :cond_2

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/TaskRecord;

    iget-object v0, v6, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "activityNdx":I
    :goto_1
    if-ltz v1, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .local v2, "ar":Lcom/android/server/am/ActivityRecord;
    iget v6, v2, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v5, v6, :cond_0

    iget-object v6, v2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, v2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iput-object p1, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .end local v2    # "ar":Lcom/android/server/am/ActivityRecord;
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .end local v0    # "activities":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    :cond_2
    return-void
.end method

.method updateBoundsAllowed(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 2
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "tempTaskBounds"    # Landroid/graphics/Rect;
    .param p3, "tempTaskInsetBounds"    # Landroid/graphics/Rect;

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/android/server/am/ActivityStack;->mUpdateBoundsDeferred:Z

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mDeferredBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_0
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mDeferredTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_1
    if-eqz p3, :cond_3

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mDeferredTaskInsetBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_2
    iput-boolean v1, p0, Lcom/android/server/am/ActivityStack;->mUpdateBoundsDeferredCalled:Z

    const/4 v0, 0x0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mDeferredBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mDeferredTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mDeferredTaskInsetBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_2
.end method

.method final updateLRUListLocked(Lcom/android/server/am/ActivityRecord;)Z
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .local v0, "hadit":Z
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v0
.end method

.method willActivityBeVisibleLocked(Landroid/os/IBinder;)Z
    .locals 7
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .local p0, "this":Lcom/android/server/am/ActivityStack;, "Lcom/android/server/am/ActivityStack<TT;>;"
    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .local v3, "taskNdx":I
    :goto_0
    if-ltz v3, :cond_3

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    iget-object v0, v4, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "activityNdx":I
    :goto_1
    if-ltz v1, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    if-ne v4, p1, :cond_0

    const/4 v4, 0x1

    return v4

    :cond_0
    iget-boolean v4, v2, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v4, :cond_1

    iget-boolean v4, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    return v5

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    :cond_3
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .restart local v2    # "r":Lcom/android/server/am/ActivityRecord;
    if-nez v2, :cond_4

    return v5

    :cond_4
    iget-boolean v4, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v4, :cond_5

    sget-object v4, Lcom/android/server/am/ActivityStack;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "willActivityBeVisibleLocked: Returning false, would have returned true for r="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-boolean v4, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    xor-int/lit8 v4, v4, 0x1

    return v4
.end method
