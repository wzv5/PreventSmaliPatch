.class public abstract Landroid/app/INotificationManager$Stub;
.super Landroid/os/Binder;
.source "INotificationManager.java"

# interfaces
.implements Landroid/app/INotificationManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/INotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/INotificationManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.INotificationManager"

.field static final TRANSACTION_addAutomaticZenRule:I = 0x51

.field static final TRANSACTION_applyAdjustmentFromAssistant:I = 0x36

.field static final TRANSACTION_applyAdjustmentsFromAssistant:I = 0x37

.field static final TRANSACTION_applyEnqueuedAdjustmentFromAssistant:I = 0x35

.field static final TRANSACTION_applyRestore:I = 0x57

.field static final TRANSACTION_areNotificationsEnabled:I = 0xb

.field static final TRANSACTION_areNotificationsEnabledForPackage:I = 0xa

.field static final TRANSACTION_canShowBadge:I = 0x8

.field static final TRANSACTION_cancelAllNotifications:I = 0x1

.field static final TRANSACTION_cancelNotificationFromListener:I = 0x21

.field static final TRANSACTION_cancelNotificationWithTag:I = 0x6

.field static final TRANSACTION_cancelNotificationsFromListener:I = 0x22

.field static final TRANSACTION_cancelToast:I = 0x4

.field static final TRANSACTION_clearData:I = 0x2

.field static final TRANSACTION_createNotificationChannelGroups:I = 0xd

.field static final TRANSACTION_createNotificationChannels:I = 0xe

.field static final TRANSACTION_createNotificationChannelsForPackage:I = 0xf

.field static final TRANSACTION_deleteNotificationChannel:I = 0x15

.field static final TRANSACTION_deleteNotificationChannelGroup:I = 0x1a

.field static final TRANSACTION_enqueueNotificationWithTag:I = 0x5

.field static final TRANSACTION_enqueueToast:I = 0x3

.field static final TRANSACTION_getActiveNotifications:I = 0x1d

.field static final TRANSACTION_getActiveNotificationsFromListener:I = 0x2a

.field static final TRANSACTION_getAppActiveNotifications:I = 0x58

.field static final TRANSACTION_getAutomaticZenRule:I = 0x4f

.field static final TRANSACTION_getBackupPayload:I = 0x56

.field static final TRANSACTION_getDeletedChannelCount:I = 0x19

.field static final TRANSACTION_getEffectsSuppressor:I = 0x39

.field static final TRANSACTION_getEnabledNotificationListenerPackages:I = 0x43

.field static final TRANSACTION_getEnabledNotificationListeners:I = 0x44

.field static final TRANSACTION_getHintsFromListener:I = 0x2d

.field static final TRANSACTION_getHistoricalNotifications:I = 0x1e

.field static final TRANSACTION_getInterruptionFilterFromListener:I = 0x2f

.field static final TRANSACTION_getNotificationChannel:I = 0x13

.field static final TRANSACTION_getNotificationChannelForPackage:I = 0x14

.field static final TRANSACTION_getNotificationChannelGroupForPackage:I = 0x11

.field static final TRANSACTION_getNotificationChannelGroups:I = 0x1b

.field static final TRANSACTION_getNotificationChannelGroupsForPackage:I = 0x10

.field static final TRANSACTION_getNotificationChannelGroupsFromPrivilegedListener:I = 0x34

.field static final TRANSACTION_getNotificationChannels:I = 0x16

.field static final TRANSACTION_getNotificationChannelsForPackage:I = 0x17

.field static final TRANSACTION_getNotificationChannelsFromPrivilegedListener:I = 0x33

.field static final TRANSACTION_getNotificationPolicy:I = 0x4a

.field static final TRANSACTION_getNumNotificationChannelsForPackage:I = 0x18

.field static final TRANSACTION_getPackageImportance:I = 0xc

.field static final TRANSACTION_getPriority:I = 0x5a

.field static final TRANSACTION_getRuleInstanceCount:I = 0x55

.field static final TRANSACTION_getSnoozedNotificationsFromListener:I = 0x2b

.field static final TRANSACTION_getZenMode:I = 0x45

.field static final TRANSACTION_getZenModeConfig:I = 0x46

.field static final TRANSACTION_getZenRules:I = 0x50

.field static final TRANSACTION_isNotificationAssistantAccessGranted:I = 0x3e

.field static final TRANSACTION_isNotificationListenerAccessGranted:I = 0x3c

.field static final TRANSACTION_isNotificationListenerAccessGrantedForUser:I = 0x3d

.field static final TRANSACTION_isNotificationPolicyAccessGranted:I = 0x49

.field static final TRANSACTION_isNotificationPolicyAccessGrantedForPackage:I = 0x4c

.field static final TRANSACTION_isSystemConditionProviderEnabled:I = 0x3b

.field static final TRANSACTION_matchesCallFilter:I = 0x3a

.field static final TRANSACTION_notifyConditions:I = 0x48

.field static final TRANSACTION_onlyHasDefaultChannel:I = 0x1c

.field static final TRANSACTION_registerListener:I = 0x1f

.field static final TRANSACTION_removeAutomaticZenRule:I = 0x53

.field static final TRANSACTION_removeAutomaticZenRules:I = 0x54

.field static final TRANSACTION_requestBindListener:I = 0x25

.field static final TRANSACTION_requestBindProvider:I = 0x27

.field static final TRANSACTION_requestHintsFromListener:I = 0x2c

.field static final TRANSACTION_requestInterruptionFilterFromListener:I = 0x2e

.field static final TRANSACTION_requestUnbindListener:I = 0x26

.field static final TRANSACTION_requestUnbindProvider:I = 0x28

.field static final TRANSACTION_setInterruptionFilter:I = 0x31

.field static final TRANSACTION_setMediaPlaying:I = 0x59

.field static final TRANSACTION_setNotificationAssistantAccessGranted:I = 0x40

.field static final TRANSACTION_setNotificationAssistantAccessGrantedForUser:I = 0x42

.field static final TRANSACTION_setNotificationListenerAccessGranted:I = 0x3f

.field static final TRANSACTION_setNotificationListenerAccessGrantedForUser:I = 0x41

.field static final TRANSACTION_setNotificationPolicy:I = 0x4b

.field static final TRANSACTION_setNotificationPolicyAccessGranted:I = 0x4d

.field static final TRANSACTION_setNotificationPolicyAccessGrantedForUser:I = 0x4e

.field static final TRANSACTION_setNotificationsEnabledForPackage:I = 0x9

.field static final TRANSACTION_setNotificationsShownFromListener:I = 0x29

.field static final TRANSACTION_setOnNotificationPostedTrimFromListener:I = 0x30

.field static final TRANSACTION_setShowBadge:I = 0x7

.field static final TRANSACTION_setZenMode:I = 0x47

.field static final TRANSACTION_snoozeNotificationUntilContextFromListener:I = 0x23

.field static final TRANSACTION_snoozeNotificationUntilFromListener:I = 0x24

.field static final TRANSACTION_unregisterListener:I = 0x20

.field static final TRANSACTION_unsnoozeNotificationFromAssistant:I = 0x38

.field static final TRANSACTION_updateAutomaticZenRule:I = 0x52

.field static final TRANSACTION_updateNotificationChannelForPackage:I = 0x12

.field static final TRANSACTION_updateNotificationChannelFromPrivilegedListener:I = 0x32


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.app.INotificationManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/INotificationManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "android.app.INotificationManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/INotificationManager;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/app/INotificationManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/app/INotificationManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/INotificationManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 56
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    sparse-switch p1, :sswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    :sswitch_0
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v4, 0x1

    return v4

    :sswitch_1
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .local v19, "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v5, v1}, Landroid/app/INotificationManager$Stub;->cancelAllNotifications(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v19    # "_arg1":I
    :sswitch_2
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .restart local v19    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    const/16 v37, 0x1

    .local v37, "_arg2":Z
    :goto_0
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v37

    invoke-virtual {v0, v5, v1, v2}, Landroid/app/INotificationManager$Stub;->clearData(Ljava/lang/String;IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    .end local v37    # "_arg2":Z
    :cond_0
    const/16 v37, 0x0

    .restart local v37    # "_arg2":Z
    goto :goto_0

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v19    # "_arg1":I
    .end local v37    # "_arg2":Z
    :sswitch_3
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/ITransientNotification$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ITransientNotification;

    move-result-object v21

    .local v21, "_arg1":Landroid/app/ITransientNotification;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    .local v31, "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v31

    invoke-virtual {v0, v5, v1, v2}, Landroid/app/INotificationManager$Stub;->enqueueToast(Ljava/lang/String;Landroid/app/ITransientNotification;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v21    # "_arg1":Landroid/app/ITransientNotification;
    .end local v31    # "_arg2":I
    :sswitch_4
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/ITransientNotification$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ITransientNotification;

    move-result-object v21

    .restart local v21    # "_arg1":Landroid/app/ITransientNotification;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v5, v1}, Landroid/app/INotificationManager$Stub;->cancelToast(Ljava/lang/String;Landroid/app/ITransientNotification;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v21    # "_arg1":Landroid/app/ITransientNotification;
    :sswitch_5
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .local v7, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .local v8, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/Notification;

    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .local v10, "_arg5":I
    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v10}, Landroid/app/INotificationManager$Stub;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    .end local v10    # "_arg5":I
    :cond_1
    const/4 v9, 0x0

    .local v9, "_arg4":Landroid/app/Notification;
    goto :goto_1

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":Landroid/app/Notification;
    :sswitch_6
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    .restart local v31    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "_arg3":I
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v5, v6, v1, v8}, Landroid/app/INotificationManager$Stub;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg3":I
    .end local v31    # "_arg2":I
    :sswitch_7
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .restart local v19    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    const/16 v37, 0x1

    .restart local v37    # "_arg2":Z
    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v37

    invoke-virtual {v0, v5, v1, v2}, Landroid/app/INotificationManager$Stub;->setShowBadge(Ljava/lang/String;IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    .end local v37    # "_arg2":Z
    :cond_2
    const/16 v37, 0x0

    .restart local v37    # "_arg2":Z
    goto :goto_2

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v19    # "_arg1":I
    .end local v37    # "_arg2":Z
    :sswitch_8
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .restart local v19    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v5, v1}, Landroid/app/INotificationManager$Stub;->canShowBadge(Ljava/lang/String;I)Z

    move-result v53

    .local v53, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v53, :cond_3

    const/4 v4, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v19    # "_arg1":I
    .end local v53    # "_result":Z
    :sswitch_9
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .restart local v19    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    const/16 v37, 0x1

    .restart local v37    # "_arg2":Z
    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v37

    invoke-virtual {v0, v5, v1, v2}, Landroid/app/INotificationManager$Stub;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    .end local v37    # "_arg2":Z
    :cond_4
    const/16 v37, 0x0

    .restart local v37    # "_arg2":Z
    goto :goto_4

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v19    # "_arg1":I
    .end local v37    # "_arg2":Z
    :sswitch_a
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .restart local v19    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v5, v1}, Landroid/app/INotificationManager$Stub;->areNotificationsEnabledForPackage(Ljava/lang/String;I)Z

    move-result v53

    .restart local v53    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v53, :cond_5

    const/4 v4, 0x1

    :goto_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    :cond_5
    const/4 v4, 0x0

    goto :goto_5

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v19    # "_arg1":I
    .end local v53    # "_result":Z
    :sswitch_b
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/INotificationManager$Stub;->areNotificationsEnabled(Ljava/lang/String;)Z

    move-result v53

    .restart local v53    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v53, :cond_6

    const/4 v4, 0x1

    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    :cond_6
    const/4 v4, 0x0

    goto :goto_6

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v53    # "_result":Z
    :sswitch_c
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/INotificationManager$Stub;->getPackageImportance(Ljava/lang/String;)I

    move-result v41

    .local v41, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v41    # "_result":I
    :sswitch_d
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7

    sget-object v4, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/content/pm/ParceledListSlice;

    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v5, v1}, Landroid/app/INotificationManager$Stub;->createNotificationChannelGroups(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    :cond_7
    const/16 v24, 0x0

    .local v24, "_arg1":Landroid/content/pm/ParceledListSlice;
    goto :goto_7

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v24    # "_arg1":Landroid/content/pm/ParceledListSlice;
    :sswitch_e
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8

    sget-object v4, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/content/pm/ParceledListSlice;

    :goto_8
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v5, v1}, Landroid/app/INotificationManager$Stub;->createNotificationChannels(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    :cond_8
    const/16 v24, 0x0

    .restart local v24    # "_arg1":Landroid/content/pm/ParceledListSlice;
    goto :goto_8

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v24    # "_arg1":Landroid/content/pm/ParceledListSlice;
    :sswitch_f
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .restart local v19    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_9

    sget-object v4, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/content/pm/ParceledListSlice;

    :goto_9
    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v35

    invoke-virtual {v0, v5, v1, v2}, Landroid/app/INotificationManager$Stub;->createNotificationChannelsForPackage(Ljava/lang/String;ILandroid/content/pm/ParceledListSlice;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    :cond_9
    const/16 v35, 0x0

    .local v35, "_arg2":Landroid/content/pm/ParceledListSlice;
    goto :goto_9

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v19    # "_arg1":I
    .end local v35    # "_arg2":Landroid/content/pm/ParceledListSlice;
    :sswitch_10
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .restart local v19    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a

    const/16 v37, 0x1

    .restart local v37    # "_arg2":Z
    :goto_a
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v37

    invoke-virtual {v0, v5, v1, v2}, Landroid/app/INotificationManager$Stub;->getNotificationChannelGroupsForPackage(Ljava/lang/String;IZ)Landroid/content/pm/ParceledListSlice;

    move-result-object v47

    .local v47, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v47, :cond_b

    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    move-object/from16 v0, v47

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_b
    const/4 v4, 0x1

    return v4

    .end local v37    # "_arg2":Z
    .end local v47    # "_result":Landroid/content/pm/ParceledListSlice;
    :cond_a
    const/16 v37, 0x0

    .restart local v37    # "_arg2":Z
    goto :goto_a

    .restart local v47    # "_result":Landroid/content/pm/ParceledListSlice;
    :cond_b
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_b

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v19    # "_arg1":I
    .end local v37    # "_arg2":Z
    .end local v47    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_11
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    .restart local v31    # "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v5, v6, v1}, Landroid/app/INotificationManager$Stub;->getNotificationChannelGroupForPackage(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/NotificationChannelGroup;

    move-result-object v44

    .local v44, "_result":Landroid/app/NotificationChannelGroup;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v44, :cond_c

    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    move-object/from16 v0, v44

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/app/NotificationChannelGroup;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_c
    const/4 v4, 0x1

    return v4

    :cond_c
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_c

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v31    # "_arg2":I
    .end local v44    # "_result":Landroid/app/NotificationChannelGroup;
    :sswitch_12
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .restart local v19    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d

    sget-object v4, Landroid/app/NotificationChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/app/NotificationChannel;

    :goto_d
    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v34

    invoke-virtual {v0, v5, v1, v2}, Landroid/app/INotificationManager$Stub;->updateNotificationChannelForPackage(Ljava/lang/String;ILandroid/app/NotificationChannel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    :cond_d
    const/16 v34, 0x0

    .local v34, "_arg2":Landroid/app/NotificationChannel;
    goto :goto_d

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v19    # "_arg1":I
    .end local v34    # "_arg2":Landroid/app/NotificationChannel;
    :sswitch_13
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/INotificationManager$Stub;->getNotificationChannel(Ljava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v43

    .local v43, "_result":Landroid/app/NotificationChannel;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v43, :cond_e

    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    move-object/from16 v0, v43

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/app/NotificationChannel;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_e
    const/4 v4, 0x1

    return v4

    :cond_e
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_e

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v43    # "_result":Landroid/app/NotificationChannel;
    :sswitch_14
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .restart local v19    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_f

    const/16 v40, 0x1

    .local v40, "_arg3":Z
    :goto_f
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v40

    invoke-virtual {v0, v5, v1, v7, v2}, Landroid/app/INotificationManager$Stub;->getNotificationChannelForPackage(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannel;

    move-result-object v43

    .restart local v43    # "_result":Landroid/app/NotificationChannel;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v43, :cond_10

    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    move-object/from16 v0, v43

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/app/NotificationChannel;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_10
    const/4 v4, 0x1

    return v4

    .end local v40    # "_arg3":Z
    .end local v43    # "_result":Landroid/app/NotificationChannel;
    :cond_f
    const/16 v40, 0x0

    .restart local v40    # "_arg3":Z
    goto :goto_f

    .restart local v43    # "_result":Landroid/app/NotificationChannel;
    :cond_10
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_10

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v19    # "_arg1":I
    .end local v40    # "_arg3":Z
    .end local v43    # "_result":Landroid/app/NotificationChannel;
    :sswitch_15
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/INotificationManager$Stub;->deleteNotificationChannel(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    :sswitch_16
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/INotificationManager$Stub;->getNotificationChannels(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v47

    .restart local v47    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v47, :cond_11

    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    move-object/from16 v0, v47

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_11
    const/4 v4, 0x1

    return v4

    :cond_11
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_11

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v47    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_17
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .restart local v19    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_12

    const/16 v37, 0x1

    .restart local v37    # "_arg2":Z
    :goto_12
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v37

    invoke-virtual {v0, v5, v1, v2}, Landroid/app/INotificationManager$Stub;->getNotificationChannelsForPackage(Ljava/lang/String;IZ)Landroid/content/pm/ParceledListSlice;

    move-result-object v47

    .restart local v47    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v47, :cond_13

    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    move-object/from16 v0, v47

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_13
    const/4 v4, 0x1

    return v4

    .end local v37    # "_arg2":Z
    .end local v47    # "_result":Landroid/content/pm/ParceledListSlice;
    :cond_12
    const/16 v37, 0x0

    .restart local v37    # "_arg2":Z
    goto :goto_12

    .restart local v47    # "_result":Landroid/content/pm/ParceledListSlice;
    :cond_13
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_13

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v19    # "_arg1":I
    .end local v37    # "_arg2":Z
    .end local v47    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_18
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .restart local v19    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_14

    const/16 v37, 0x1

    .restart local v37    # "_arg2":Z
    :goto_14
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v37

    invoke-virtual {v0, v5, v1, v2}, Landroid/app/INotificationManager$Stub;->getNumNotificationChannelsForPackage(Ljava/lang/String;IZ)I

    move-result v41

    .restart local v41    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    .end local v37    # "_arg2":Z
    .end local v41    # "_result":I
    :cond_14
    const/16 v37, 0x0

    .restart local v37    # "_arg2":Z
    goto :goto_14

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v19    # "_arg1":I
    .end local v37    # "_arg2":Z
    :sswitch_19
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .restart local v19    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v5, v1}, Landroid/app/INotificationManager$Stub;->getDeletedChannelCount(Ljava/lang/String;I)I

    move-result v41

    .restart local v41    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v19    # "_arg1":I
    .end local v41    # "_result":I
    :sswitch_1a
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/app/INotificationManager$Stub;->deleteNotificationChannelGroup(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    :sswitch_1b
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/INotificationManager$Stub;->getNotificationChannelGroups(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v47

    .restart local v47    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v47, :cond_15

    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    move-object/from16 v0, v47

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_15
    const/4 v4, 0x1

    return v4

    :cond_15
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_15

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v47    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_1c
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .restart local v19    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v5, v1}, Landroid/app/INotificationManager$Stub;->onlyHasDefaultChannel(Ljava/lang/String;I)Z

    move-result v53

    .restart local v53    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v53, :cond_16

    const/4 v4, 0x1

    :goto_16
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    :cond_16
    const/4 v4, 0x0

    goto :goto_16

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v19    # "_arg1":I
    .end local v53    # "_result":Z
    :sswitch_1d
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/INotificationManager$Stub;->getActiveNotifications(Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;

    move-result-object v55

    .local v55, "_result":[Landroid/service/notification/StatusBarNotification;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v55

    invoke-virtual {v0, v1, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    const/4 v4, 0x1

    return v4

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v55    # "_result":[Landroid/service/notification/StatusBarNotification;
    :sswitch_1e
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .restart local v19    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v5, v1}, Landroid/app/INotificationManager$Stub;->getHistoricalNotifications(Ljava/lang/String;I)[Landroid/service/notification/StatusBarNotification;

    move-result-object v55

    .restart local v55    # "_result":[Landroid/service/notification/StatusBarNotification;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v55

    invoke-virtual {v0, v1, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    const/4 v4, 0x1

    return v4

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v19    # "_arg1":I
    .end local v55    # "_result":[Landroid/service/notification/StatusBarNotification;
    :sswitch_1f
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v16

    .local v16, "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_17

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/content/ComponentName;

    :goto_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    .restart local v31    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v23

    move/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->registerListener(Landroid/service/notification/INotificationListener;Landroid/content/ComponentName;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    .end local v31    # "_arg2":I
    :cond_17
    const/16 v23, 0x0

    .local v23, "_arg1":Landroid/content/ComponentName;
    goto :goto_17

    .end local v16    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v23    # "_arg1":Landroid/content/ComponentName;
    :sswitch_20
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v16

    .restart local v16    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .restart local v19    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/app/INotificationManager$Stub;->unregisterListener(Landroid/service/notification/INotificationListener;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    .end local v16    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v19    # "_arg1":I
    :sswitch_21
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v16

    .restart local v16    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "_arg3":I
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v6, v7, v8}, Landroid/app/INotificationManager$Stub;->cancelNotificationFromListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v8    # "_arg3":I
    .end local v16    # "_arg0":Landroid/service/notification/INotificationListener;
    :sswitch_22
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v16

    .restart local v16    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v30

    .local v30, "_arg1":[Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/app/INotificationManager$Stub;->cancelNotificationsFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    .end local v16    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v30    # "_arg1":[Ljava/lang/String;
    :sswitch_23
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v16

    .restart local v16    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v6, v7}, Landroid/app/INotificationManager$Stub;->snoozeNotificationUntilContextFromListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v7    # "_arg2":Ljava/lang/String;
    .end local v16    # "_arg0":Landroid/service/notification/INotificationListener;
    :sswitch_24
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v16

    .restart local v16    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v32

    .local v32, "_arg2":J
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-wide/from16 v2, v32

    invoke-virtual {v0, v1, v6, v2, v3}, Landroid/app/INotificationManager$Stub;->snoozeNotificationUntilFromListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;J)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v16    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v32    # "_arg2":J
    :sswitch_25
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_18

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/ComponentName;

    :goto_18
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/app/INotificationManager$Stub;->requestBindListener(Landroid/content/ComponentName;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    :cond_18
    const/4 v13, 0x0

    .local v13, "_arg0":Landroid/content/ComponentName;
    goto :goto_18

    .end local v13    # "_arg0":Landroid/content/ComponentName;
    :sswitch_26
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v16

    .restart local v16    # "_arg0":Landroid/service/notification/INotificationListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/INotificationManager$Stub;->requestUnbindListener(Landroid/service/notification/INotificationListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    .end local v16    # "_arg0":Landroid/service/notification/INotificationListener;
    :sswitch_27
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_19

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/ComponentName;

    :goto_19
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/app/INotificationManager$Stub;->requestBindProvider(Landroid/content/ComponentName;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    :cond_19
    const/4 v13, 0x0

    .restart local v13    # "_arg0":Landroid/content/ComponentName;
    goto :goto_19

    .end local v13    # "_arg0":Landroid/content/ComponentName;
    :sswitch_28
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/notification/IConditionProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/IConditionProvider;

    move-result-object v15

    .local v15, "_arg0":Landroid/service/notification/IConditionProvider;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/app/INotificationManager$Stub;->requestUnbindProvider(Landroid/service/notification/IConditionProvider;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    .end local v15    # "_arg0":Landroid/service/notification/IConditionProvider;
    :sswitch_29
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v16

    .restart local v16    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v30

    .restart local v30    # "_arg1":[Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/app/INotificationManager$Stub;->setNotificationsShownFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    .end local v16    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v30    # "_arg1":[Ljava/lang/String;
    :sswitch_2a
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v16

    .restart local v16    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v30

    .restart local v30    # "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    .restart local v31    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v30

    move/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/INotificationManager$Stub;->getActiveNotificationsFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v47

    .restart local v47    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v47, :cond_1a

    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    move-object/from16 v0, v47

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1a
    const/4 v4, 0x1

    return v4

    :cond_1a
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1a

    .end local v16    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v30    # "_arg1":[Ljava/lang/String;
    .end local v31    # "_arg2":I
    .end local v47    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_2b
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v16

    .restart local v16    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .restart local v19    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/app/INotificationManager$Stub;->getSnoozedNotificationsFromListener(Landroid/service/notification/INotificationListener;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v47

    .restart local v47    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v47, :cond_1b

    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    move-object/from16 v0, v47

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1b
    const/4 v4, 0x1

    return v4

    :cond_1b
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1b

    .end local v16    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v19    # "_arg1":I
    .end local v47    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_2c
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v16

    .restart local v16    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .restart local v19    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/app/INotificationManager$Stub;->requestHintsFromListener(Landroid/service/notification/INotificationListener;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    .end local v16    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v19    # "_arg1":I
    :sswitch_2d
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v16

    .restart local v16    # "_arg0":Landroid/service/notification/INotificationListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/INotificationManager$Stub;->getHintsFromListener(Landroid/service/notification/INotificationListener;)I

    move-result v41

    .restart local v41    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    .end local v16    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v41    # "_result":I
    :sswitch_2e
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v16

    .restart local v16    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .restart local v19    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/app/INotificationManager$Stub;->requestInterruptionFilterFromListener(Landroid/service/notification/INotificationListener;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    .end local v16    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v19    # "_arg1":I
    :sswitch_2f
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v16

    .restart local v16    # "_arg0":Landroid/service/notification/INotificationListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/INotificationManager$Stub;->getInterruptionFilterFromListener(Landroid/service/notification/INotificationListener;)I

    move-result v41

    .restart local v41    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    .end local v16    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v41    # "_result":I
    :sswitch_30
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v16

    .restart local v16    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .restart local v19    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/app/INotificationManager$Stub;->setOnNotificationPostedTrimFromListener(Landroid/service/notification/INotificationListener;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    .end local v16    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v19    # "_arg1":I
    :sswitch_31
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .restart local v19    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v5, v1}, Landroid/app/INotificationManager$Stub;->setInterruptionFilter(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v19    # "_arg1":I
    :sswitch_32
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v16

    .restart local v16    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1c

    sget-object v4, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/os/UserHandle;

    :goto_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1d

    sget-object v4, Landroid/app/NotificationChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/app/NotificationChannel;

    :goto_1d
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v36

    move-object/from16 v3, v39

    invoke-virtual {v0, v1, v6, v2, v3}, Landroid/app/INotificationManager$Stub;->updateNotificationChannelFromPrivilegedListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    :cond_1c
    const/16 v36, 0x0

    .local v36, "_arg2":Landroid/os/UserHandle;
    goto :goto_1c

    .end local v36    # "_arg2":Landroid/os/UserHandle;
    :cond_1d
    const/16 v39, 0x0

    .local v39, "_arg3":Landroid/app/NotificationChannel;
    goto :goto_1d

    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v16    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v39    # "_arg3":Landroid/app/NotificationChannel;
    :sswitch_33
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v16

    .restart local v16    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1e

    sget-object v4, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/os/UserHandle;

    :goto_1e
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v6, v2}, Landroid/app/INotificationManager$Stub;->getNotificationChannelsFromPrivilegedListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/pm/ParceledListSlice;

    move-result-object v47

    .restart local v47    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v47, :cond_1f

    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    move-object/from16 v0, v47

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1f
    const/4 v4, 0x1

    return v4

    .end local v47    # "_result":Landroid/content/pm/ParceledListSlice;
    :cond_1e
    const/16 v36, 0x0

    .restart local v36    # "_arg2":Landroid/os/UserHandle;
    goto :goto_1e

    .end local v36    # "_arg2":Landroid/os/UserHandle;
    .restart local v47    # "_result":Landroid/content/pm/ParceledListSlice;
    :cond_1f
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1f

    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v16    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v47    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_34
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v16

    .restart local v16    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_20

    sget-object v4, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/os/UserHandle;

    :goto_20
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v6, v2}, Landroid/app/INotificationManager$Stub;->getNotificationChannelGroupsFromPrivilegedListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/pm/ParceledListSlice;

    move-result-object v47

    .restart local v47    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v47, :cond_21

    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    move-object/from16 v0, v47

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_21
    const/4 v4, 0x1

    return v4

    .end local v47    # "_result":Landroid/content/pm/ParceledListSlice;
    :cond_20
    const/16 v36, 0x0

    .restart local v36    # "_arg2":Landroid/os/UserHandle;
    goto :goto_20

    .end local v36    # "_arg2":Landroid/os/UserHandle;
    .restart local v47    # "_result":Landroid/content/pm/ParceledListSlice;
    :cond_21
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_21

    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v16    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v47    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_35
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v16

    .restart local v16    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_22

    sget-object v4, Landroid/service/notification/Adjustment;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/service/notification/Adjustment;

    :goto_22
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/app/INotificationManager$Stub;->applyEnqueuedAdjustmentFromAssistant(Landroid/service/notification/INotificationListener;Landroid/service/notification/Adjustment;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    :cond_22
    const/16 v26, 0x0

    .local v26, "_arg1":Landroid/service/notification/Adjustment;
    goto :goto_22

    .end local v16    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v26    # "_arg1":Landroid/service/notification/Adjustment;
    :sswitch_36
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v16

    .restart local v16    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_23

    sget-object v4, Landroid/service/notification/Adjustment;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/service/notification/Adjustment;

    :goto_23
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/app/INotificationManager$Stub;->applyAdjustmentFromAssistant(Landroid/service/notification/INotificationListener;Landroid/service/notification/Adjustment;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    :cond_23
    const/16 v26, 0x0

    .restart local v26    # "_arg1":Landroid/service/notification/Adjustment;
    goto :goto_23

    .end local v16    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v26    # "_arg1":Landroid/service/notification/Adjustment;
    :sswitch_37
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v16

    .restart local v16    # "_arg0":Landroid/service/notification/INotificationListener;
    sget-object v4, Landroid/service/notification/Adjustment;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v28

    .local v28, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/Adjustment;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/app/INotificationManager$Stub;->applyAdjustmentsFromAssistant(Landroid/service/notification/INotificationListener;Ljava/util/List;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    .end local v16    # "_arg0":Landroid/service/notification/INotificationListener;
    .end local v28    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/Adjustment;>;"
    :sswitch_38
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v16

    .restart local v16    # "_arg0":Landroid/service/notification/INotificationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v6}, Landroid/app/INotificationManager$Stub;->unsnoozeNotificationFromAssistant(Landroid/service/notification/INotificationListener;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v16    # "_arg0":Landroid/service/notification/INotificationListener;
    :sswitch_39
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/INotificationManager$Stub;->getEffectsSuppressor()Landroid/content/ComponentName;

    move-result-object v46

    .local v46, "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v46, :cond_24

    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    move-object/from16 v0, v46

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_24
    const/4 v4, 0x1

    return v4

    :cond_24
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_24

    .end local v46    # "_result":Landroid/content/ComponentName;
    :sswitch_3a
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_25

    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/Bundle;

    :goto_25
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/app/INotificationManager$Stub;->matchesCallFilter(Landroid/os/Bundle;)Z

    move-result v53

    .restart local v53    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v53, :cond_26

    const/4 v4, 0x1

    :goto_26
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    .end local v53    # "_result":Z
    :cond_25
    const/4 v14, 0x0

    .local v14, "_arg0":Landroid/os/Bundle;
    goto :goto_25

    .end local v14    # "_arg0":Landroid/os/Bundle;
    .restart local v53    # "_result":Z
    :cond_26
    const/4 v4, 0x0

    goto :goto_26

    .end local v53    # "_result":Z
    :sswitch_3b
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/INotificationManager$Stub;->isSystemConditionProviderEnabled(Ljava/lang/String;)Z

    move-result v53

    .restart local v53    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v53, :cond_27

    const/4 v4, 0x1

    :goto_27
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    :cond_27
    const/4 v4, 0x0

    goto :goto_27

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v53    # "_result":Z
    :sswitch_3c
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_28

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/ComponentName;

    :goto_28
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/app/INotificationManager$Stub;->isNotificationListenerAccessGranted(Landroid/content/ComponentName;)Z

    move-result v53

    .restart local v53    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v53, :cond_29

    const/4 v4, 0x1

    :goto_29
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    .end local v53    # "_result":Z
    :cond_28
    const/4 v13, 0x0

    .restart local v13    # "_arg0":Landroid/content/ComponentName;
    goto :goto_28

    .end local v13    # "_arg0":Landroid/content/ComponentName;
    .restart local v53    # "_result":Z
    :cond_29
    const/4 v4, 0x0

    goto :goto_29

    .end local v53    # "_result":Z
    :sswitch_3d
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2a

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/ComponentName;

    :goto_2a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .restart local v19    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v13, v1}, Landroid/app/INotificationManager$Stub;->isNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;I)Z

    move-result v53

    .restart local v53    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v53, :cond_2b

    const/4 v4, 0x1

    :goto_2b
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    .end local v19    # "_arg1":I
    .end local v53    # "_result":Z
    :cond_2a
    const/4 v13, 0x0

    .restart local v13    # "_arg0":Landroid/content/ComponentName;
    goto :goto_2a

    .end local v13    # "_arg0":Landroid/content/ComponentName;
    .restart local v19    # "_arg1":I
    .restart local v53    # "_result":Z
    :cond_2b
    const/4 v4, 0x0

    goto :goto_2b

    .end local v19    # "_arg1":I
    .end local v53    # "_result":Z
    :sswitch_3e
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2c

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/ComponentName;

    :goto_2c
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/app/INotificationManager$Stub;->isNotificationAssistantAccessGranted(Landroid/content/ComponentName;)Z

    move-result v53

    .restart local v53    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v53, :cond_2d

    const/4 v4, 0x1

    :goto_2d
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    .end local v53    # "_result":Z
    :cond_2c
    const/4 v13, 0x0

    .restart local v13    # "_arg0":Landroid/content/ComponentName;
    goto :goto_2c

    .end local v13    # "_arg0":Landroid/content/ComponentName;
    .restart local v53    # "_result":Z
    :cond_2d
    const/4 v4, 0x0

    goto :goto_2d

    .end local v53    # "_result":Z
    :sswitch_3f
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2e

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/ComponentName;

    :goto_2e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2f

    const/16 v29, 0x1

    .local v29, "_arg1":Z
    :goto_2f
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v13, v1}, Landroid/app/INotificationManager$Stub;->setNotificationListenerAccessGranted(Landroid/content/ComponentName;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    .end local v29    # "_arg1":Z
    :cond_2e
    const/4 v13, 0x0

    .restart local v13    # "_arg0":Landroid/content/ComponentName;
    goto :goto_2e

    .end local v13    # "_arg0":Landroid/content/ComponentName;
    :cond_2f
    const/16 v29, 0x0

    .restart local v29    # "_arg1":Z
    goto :goto_2f

    .end local v29    # "_arg1":Z
    :sswitch_40
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_30

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/ComponentName;

    :goto_30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_31

    const/16 v29, 0x1

    .restart local v29    # "_arg1":Z
    :goto_31
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v13, v1}, Landroid/app/INotificationManager$Stub;->setNotificationAssistantAccessGranted(Landroid/content/ComponentName;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    .end local v29    # "_arg1":Z
    :cond_30
    const/4 v13, 0x0

    .restart local v13    # "_arg0":Landroid/content/ComponentName;
    goto :goto_30

    .end local v13    # "_arg0":Landroid/content/ComponentName;
    :cond_31
    const/16 v29, 0x0

    .restart local v29    # "_arg1":Z
    goto :goto_31

    .end local v29    # "_arg1":Z
    :sswitch_41
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_32

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/ComponentName;

    :goto_32
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .restart local v19    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_33

    const/16 v37, 0x1

    .restart local v37    # "_arg2":Z
    :goto_33
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v37

    invoke-virtual {v0, v13, v1, v2}, Landroid/app/INotificationManager$Stub;->setNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    .end local v19    # "_arg1":I
    .end local v37    # "_arg2":Z
    :cond_32
    const/4 v13, 0x0

    .restart local v13    # "_arg0":Landroid/content/ComponentName;
    goto :goto_32

    .end local v13    # "_arg0":Landroid/content/ComponentName;
    .restart local v19    # "_arg1":I
    :cond_33
    const/16 v37, 0x0

    .restart local v37    # "_arg2":Z
    goto :goto_33

    .end local v19    # "_arg1":I
    .end local v37    # "_arg2":Z
    :sswitch_42
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_34

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/ComponentName;

    :goto_34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .restart local v19    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_35

    const/16 v37, 0x1

    .restart local v37    # "_arg2":Z
    :goto_35
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v37

    invoke-virtual {v0, v13, v1, v2}, Landroid/app/INotificationManager$Stub;->setNotificationAssistantAccessGrantedForUser(Landroid/content/ComponentName;IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    .end local v19    # "_arg1":I
    .end local v37    # "_arg2":Z
    :cond_34
    const/4 v13, 0x0

    .restart local v13    # "_arg0":Landroid/content/ComponentName;
    goto :goto_34

    .end local v13    # "_arg0":Landroid/content/ComponentName;
    .restart local v19    # "_arg1":I
    :cond_35
    const/16 v37, 0x0

    .restart local v37    # "_arg2":Z
    goto :goto_35

    .end local v19    # "_arg1":I
    .end local v37    # "_arg2":Z
    :sswitch_43
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/INotificationManager$Stub;->getEnabledNotificationListenerPackages()Ljava/util/List;

    move-result-object v52

    .local v52, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    const/4 v4, 0x1

    return v4

    .end local v52    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_44
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .local v11, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/app/INotificationManager$Stub;->getEnabledNotificationListeners(I)Ljava/util/List;

    move-result-object v50

    .local v50, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v4, 0x1

    return v4

    .end local v11    # "_arg0":I
    .end local v50    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :sswitch_45
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/INotificationManager$Stub;->getZenMode()I

    move-result v41

    .restart local v41    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    .end local v41    # "_result":I
    :sswitch_46
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/INotificationManager$Stub;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v48

    .local v48, "_result":Landroid/service/notification/ZenModeConfig;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v48, :cond_36

    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    move-object/from16 v0, v48

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/service/notification/ZenModeConfig;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_36
    const/4 v4, 0x1

    return v4

    :cond_36
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_36

    .end local v48    # "_result":Landroid/service/notification/ZenModeConfig;
    :sswitch_47
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .restart local v11    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_37

    sget-object v4, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/net/Uri;

    :goto_37
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v11, v1, v7}, Landroid/app/INotificationManager$Stub;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    const/4 v4, 0x1

    return v4

    .end local v7    # "_arg2":Ljava/lang/String;
    :cond_37
    const/16 v25, 0x0

    .local v25, "_arg1":Landroid/net/Uri;
    goto :goto_37

    .end local v11    # "_arg0":I
    .end local v25    # "_arg1":Landroid/net/Uri;
    :sswitch_48
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/notification/IConditionProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/IConditionProvider;

    move-result-object v27

    .local v27, "_arg1":Landroid/service/notification/IConditionProvider;
    sget-object v4, Landroid/service/notification/Condition;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v38

    check-cast v38, [Landroid/service/notification/Condition;

    .local v38, "_arg2":[Landroid/service/notification/Condition;
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v38

    invoke-virtual {v0, v5, v1, v2}, Landroid/app/INotificationManager$Stub;->notifyConditions(Ljava/lang/String;Landroid/service/notification/IConditionProvider;[Landroid/service/notification/Condition;)V

    const/4 v4, 0x1

    return v4

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v27    # "_arg1":Landroid/service/notification/IConditionProvider;
    .end local v38    # "_arg2":[Landroid/service/notification/Condition;
    :sswitch_49
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/INotificationManager$Stub;->isNotificationPolicyAccessGranted(Ljava/lang/String;)Z

    move-result v53

    .restart local v53    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v53, :cond_38

    const/4 v4, 0x1

    :goto_38
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    :cond_38
    const/4 v4, 0x0

    goto :goto_38

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v53    # "_result":Z
    :sswitch_4a
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/INotificationManager$Stub;->getNotificationPolicy(Ljava/lang/String;)Landroid/app/NotificationManager$Policy;

    move-result-object v45

    .local v45, "_result":Landroid/app/NotificationManager$Policy;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v45, :cond_39

    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    move-object/from16 v0, v45

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/app/NotificationManager$Policy;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_39
    const/4 v4, 0x1

    return v4

    :cond_39
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_39

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v45    # "_result":Landroid/app/NotificationManager$Policy;
    :sswitch_4b
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3a

    sget-object v4, Landroid/app/NotificationManager$Policy;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/app/NotificationManager$Policy;

    :goto_3a
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v5, v1}, Landroid/app/INotificationManager$Stub;->setNotificationPolicy(Ljava/lang/String;Landroid/app/NotificationManager$Policy;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    :cond_3a
    const/16 v22, 0x0

    .local v22, "_arg1":Landroid/app/NotificationManager$Policy;
    goto :goto_3a

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v22    # "_arg1":Landroid/app/NotificationManager$Policy;
    :sswitch_4c
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/INotificationManager$Stub;->isNotificationPolicyAccessGrantedForPackage(Ljava/lang/String;)Z

    move-result v53

    .restart local v53    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v53, :cond_3b

    const/4 v4, 0x1

    :goto_3b
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    :cond_3b
    const/4 v4, 0x0

    goto :goto_3b

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v53    # "_result":Z
    :sswitch_4d
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3c

    const/16 v29, 0x1

    .restart local v29    # "_arg1":Z
    :goto_3c
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v5, v1}, Landroid/app/INotificationManager$Stub;->setNotificationPolicyAccessGranted(Ljava/lang/String;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    .end local v29    # "_arg1":Z
    :cond_3c
    const/16 v29, 0x0

    .restart local v29    # "_arg1":Z
    goto :goto_3c

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v29    # "_arg1":Z
    :sswitch_4e
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .restart local v19    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3d

    const/16 v37, 0x1

    .restart local v37    # "_arg2":Z
    :goto_3d
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v37

    invoke-virtual {v0, v5, v1, v2}, Landroid/app/INotificationManager$Stub;->setNotificationPolicyAccessGrantedForUser(Ljava/lang/String;IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    .end local v37    # "_arg2":Z
    :cond_3d
    const/16 v37, 0x0

    .restart local v37    # "_arg2":Z
    goto :goto_3d

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v19    # "_arg1":I
    .end local v37    # "_arg2":Z
    :sswitch_4f
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/INotificationManager$Stub;->getAutomaticZenRule(Ljava/lang/String;)Landroid/app/AutomaticZenRule;

    move-result-object v42

    .local v42, "_result":Landroid/app/AutomaticZenRule;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v42, :cond_3e

    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    move-object/from16 v0, v42

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/app/AutomaticZenRule;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_3e
    const/4 v4, 0x1

    return v4

    :cond_3e
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3e

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v42    # "_result":Landroid/app/AutomaticZenRule;
    :sswitch_50
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/INotificationManager$Stub;->getZenRules()Ljava/util/List;

    move-result-object v51

    .local v51, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/ZenModeConfig$ZenRule;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v4, 0x1

    return v4

    .end local v51    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/ZenModeConfig$ZenRule;>;"
    :sswitch_51
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3f

    sget-object v4, Landroid/app/AutomaticZenRule;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/AutomaticZenRule;

    :goto_3f
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/app/INotificationManager$Stub;->addAutomaticZenRule(Landroid/app/AutomaticZenRule;)Ljava/lang/String;

    move-result-object v49

    .local v49, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v4, 0x1

    return v4

    .end local v49    # "_result":Ljava/lang/String;
    :cond_3f
    const/4 v12, 0x0

    .local v12, "_arg0":Landroid/app/AutomaticZenRule;
    goto :goto_3f

    .end local v12    # "_arg0":Landroid/app/AutomaticZenRule;
    :sswitch_52
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_40

    sget-object v4, Landroid/app/AutomaticZenRule;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/app/AutomaticZenRule;

    :goto_40
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v5, v1}, Landroid/app/INotificationManager$Stub;->updateAutomaticZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z

    move-result v53

    .restart local v53    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v53, :cond_41

    const/4 v4, 0x1

    :goto_41
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    .end local v53    # "_result":Z
    :cond_40
    const/16 v20, 0x0

    .local v20, "_arg1":Landroid/app/AutomaticZenRule;
    goto :goto_40

    .end local v20    # "_arg1":Landroid/app/AutomaticZenRule;
    .restart local v53    # "_result":Z
    :cond_41
    const/4 v4, 0x0

    goto :goto_41

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v53    # "_result":Z
    :sswitch_53
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/INotificationManager$Stub;->removeAutomaticZenRule(Ljava/lang/String;)Z

    move-result v53

    .restart local v53    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v53, :cond_42

    const/4 v4, 0x1

    :goto_42
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    :cond_42
    const/4 v4, 0x0

    goto :goto_42

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v53    # "_result":Z
    :sswitch_54
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/INotificationManager$Stub;->removeAutomaticZenRules(Ljava/lang/String;)Z

    move-result v53

    .restart local v53    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v53, :cond_43

    const/4 v4, 0x1

    :goto_43
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    :cond_43
    const/4 v4, 0x0

    goto :goto_43

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v53    # "_result":Z
    :sswitch_55
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_44

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/ComponentName;

    :goto_44
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/app/INotificationManager$Stub;->getRuleInstanceCount(Landroid/content/ComponentName;)I

    move-result v41

    .restart local v41    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    .end local v41    # "_result":I
    :cond_44
    const/4 v13, 0x0

    .restart local v13    # "_arg0":Landroid/content/ComponentName;
    goto :goto_44

    .end local v13    # "_arg0":Landroid/content/ComponentName;
    :sswitch_56
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .restart local v11    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/app/INotificationManager$Stub;->getBackupPayload(I)[B

    move-result-object v54

    .local v54, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    const/4 v4, 0x1

    return v4

    .end local v11    # "_arg0":I
    .end local v54    # "_result":[B
    :sswitch_57
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v18

    .local v18, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .restart local v19    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/app/INotificationManager$Stub;->applyRestore([BI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    .end local v18    # "_arg0":[B
    .end local v19    # "_arg1":I
    :sswitch_58
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .restart local v19    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v5, v1}, Landroid/app/INotificationManager$Stub;->getAppActiveNotifications(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v47

    .restart local v47    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v47, :cond_45

    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    move-object/from16 v0, v47

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_45
    const/4 v4, 0x1

    return v4

    :cond_45
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_45

    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v19    # "_arg1":I
    .end local v47    # "_result":Landroid/content/pm/ParceledListSlice;
    :sswitch_59
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_46

    const/16 v17, 0x1

    .local v17, "_arg0":Z
    :goto_46
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/INotificationManager$Stub;->setMediaPlaying(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    .end local v17    # "_arg0":Z
    :cond_46
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Z
    goto :goto_46

    .end local v17    # "_arg0":Z
    :sswitch_5a
    const-string/jumbo v4, "android.app.INotificationManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .restart local v19    # "_arg1":I
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v5, v1}, Landroid/app/INotificationManager$Stub;->getPriority(Ljava/lang/String;I)I

    move-result v41

    .restart local v41    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x4d -> :sswitch_4d
        0x4e -> :sswitch_4e
        0x4f -> :sswitch_4f
        0x50 -> :sswitch_50
        0x51 -> :sswitch_51
        0x52 -> :sswitch_52
        0x53 -> :sswitch_53
        0x54 -> :sswitch_54
        0x55 -> :sswitch_55
        0x56 -> :sswitch_56
        0x57 -> :sswitch_57
        0x58 -> :sswitch_58
        0x59 -> :sswitch_59
        0x5a -> :sswitch_5a
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
