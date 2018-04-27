.class public Lcom/android/server/notification/RankingHelper;
.super Ljava/lang/Object;
.source "RankingHelper.java"

# interfaces
.implements Lcom/android/server/notification/RankingConfig;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/RankingHelper$Record;
    }
.end annotation


# static fields
.field private static final ATT_ID:Ljava/lang/String; = "id"

.field private static final ATT_IMPORTANCE:Ljava/lang/String; = "importance"

.field private static final ATT_NAME:Ljava/lang/String; = "name"

.field private static final ATT_PRIORITY:Ljava/lang/String; = "priority"

.field private static final ATT_SHOW_BADGE:Ljava/lang/String; = "show_badge"

.field private static final ATT_UID:Ljava/lang/String; = "uid"

.field private static final ATT_VERSION:Ljava/lang/String; = "version"

.field private static final ATT_VISIBILITY:Ljava/lang/String; = "visibility"

.field private static final DEFAULT_IMPORTANCE:I = -0x3e8

.field private static final DEFAULT_PRIORITY:I = 0x0

.field private static final DEFAULT_SHOW_BADGE:Z = true

.field private static final DEFAULT_VISIBILITY:I = -0x3e8

.field private static final TAG:Ljava/lang/String; = "RankingHelper"

.field private static final TAG_CHANNEL:Ljava/lang/String; = "channel"

.field private static final TAG_GROUP:Ljava/lang/String; = "channelGroup"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "package"

.field static final TAG_RANKING:Ljava/lang/String; = "ranking"

.field private static final XML_VERSION:I = 0x1


# instance fields
.field private mBadgingEnabled:Landroid/util/SparseBooleanArray;

.field private final mContext:Landroid/content/Context;

.field private final mFinalComparator:Lcom/android/server/notification/GlobalSortKeyComparator;

.field private final mPm:Landroid/content/pm/PackageManager;

.field private final mPreliminaryComparator:Lcom/android/server/notification/NotificationComparator;

.field private final mProxyByGroupTmp:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mRankingHandler:Lcom/android/server/notification/RankingHandler;

.field private final mRecords:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/RankingHelper$Record;",
            ">;"
        }
    .end annotation
.end field

.field private final mRestoredWithoutUids:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/RankingHelper$Record;",
            ">;"
        }
    .end annotation
.end field

.field private final mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Lcom/android/server/notification/RankingHandler;Lcom/android/server/notification/NotificationUsageStats;[Ljava/lang/String;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;
    .param p3, "rankingHandler"    # Lcom/android/server/notification/RankingHandler;
    .param p4, "usageStats"    # Lcom/android/server/notification/NotificationUsageStats;
    .param p5, "extractorNames"    # [Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v7, Lcom/android/server/notification/GlobalSortKeyComparator;

    invoke-direct {v7}, Lcom/android/server/notification/GlobalSortKeyComparator;-><init>()V

    iput-object v7, p0, Lcom/android/server/notification/RankingHelper;->mFinalComparator:Lcom/android/server/notification/GlobalSortKeyComparator;

    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    iput-object v7, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    iput-object v7, p0, Lcom/android/server/notification/RankingHelper;->mProxyByGroupTmp:Landroid/util/ArrayMap;

    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    iput-object v7, p0, Lcom/android/server/notification/RankingHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    iput-object p1, p0, Lcom/android/server/notification/RankingHelper;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/notification/RankingHelper;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    iput-object p2, p0, Lcom/android/server/notification/RankingHelper;->mPm:Landroid/content/pm/PackageManager;

    new-instance v7, Lcom/android/server/notification/NotificationComparator;

    iget-object v8, p0, Lcom/android/server/notification/RankingHelper;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Lcom/android/server/notification/NotificationComparator;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/server/notification/RankingHelper;->mPreliminaryComparator:Lcom/android/server/notification/NotificationComparator;

    invoke-virtual {p0}, Lcom/android/server/notification/RankingHelper;->updateBadgingEnabled()V

    array-length v0, p5

    .local v0, "N":I
    new-array v7, v0, [Lcom/android/server/notification/NotificationSignalExtractor;

    iput-object v7, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v0, :cond_0

    :try_start_0
    iget-object v7, p0, Lcom/android/server/notification/RankingHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    aget-object v8, p5, v6

    invoke-virtual {v7, v8}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .local v5, "extractorClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationSignalExtractor;

    .local v4, "extractor":Lcom/android/server/notification/NotificationSignalExtractor;
    iget-object v7, p0, Lcom/android/server/notification/RankingHelper;->mContext:Landroid/content/Context;

    invoke-interface {v4, v7, p4}, Lcom/android/server/notification/NotificationSignalExtractor;->initialize(Landroid/content/Context;Lcom/android/server/notification/NotificationUsageStats;)V

    invoke-interface {v4, p0}, Lcom/android/server/notification/NotificationSignalExtractor;->setConfig(Lcom/android/server/notification/RankingConfig;)V

    iget-object v7, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    aput-object v4, v7, v6
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "extractor":Lcom/android/server/notification/NotificationSignalExtractor;
    .end local v5    # "extractorClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v7, "RankingHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Problem accessing extractor "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, p5, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v3

    .local v3, "e":Ljava/lang/InstantiationException;
    const-string/jumbo v7, "RankingHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Couldn\'t instantiate extractor "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, p5, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v3    # "e":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v1

    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v7, "RankingHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Couldn\'t find extractor "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, p5, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :cond_0
    return-void
.end method

.method private createDefaultChannelIfNeeded(Lcom/android/server/notification/RankingHelper$Record;)V
    .locals 8
    .param p1, "r"    # Lcom/android/server/notification/RankingHelper$Record;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    const v5, 0x10401e6

    const/4 v7, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/16 v6, -0x3e8

    iget-object v3, p1, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    const-string/jumbo v4, "miscellaneous"

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v1, p1, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    const-string/jumbo v2, "miscellaneous"

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationChannel;

    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->setName(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/notification/RankingHelper;->shouldHaveDefaultChannel(Lcom/android/server/notification/RankingHelper$Record;)Z

    move-result v3

    if-nez v3, :cond_1

    return-void

    :cond_1
    new-instance v0, Landroid/app/NotificationChannel;

    const-string/jumbo v3, "miscellaneous"

    iget-object v4, p0, Lcom/android/server/notification/RankingHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget v5, p1, Lcom/android/server/notification/RankingHelper$Record;->importance:I

    invoke-direct {v0, v3, v4, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .local v0, "channel":Landroid/app/NotificationChannel;
    iget v3, p1, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    if-ne v3, v7, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    iget v1, p1, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    iget v1, p1, Lcom/android/server/notification/RankingHelper$Record;->importance:I

    if-eq v1, v6, :cond_3

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->lockFields(I)V

    :cond_3
    iget v1, p1, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    if-eqz v1, :cond_4

    invoke-virtual {v0, v2}, Landroid/app/NotificationChannel;->lockFields(I)V

    :cond_4
    iget v1, p1, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    if-eq v1, v6, :cond_5

    invoke-virtual {v0, v7}, Landroid/app/NotificationChannel;->lockFields(I)V

    :cond_5
    iget-object v1, p1, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private deleteDefaultChannelIfNeeded(Lcom/android/server/notification/RankingHelper$Record;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/notification/RankingHelper$Record;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    iget-object v0, p1, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    const-string/jumbo v1, "miscellaneous"

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/notification/RankingHelper;->shouldHaveDefaultChannel(Lcom/android/server/notification/RankingHelper$Record;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p1, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    const-string/jumbo v1, "miscellaneous"

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static dumpRecords(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V
    .locals 10
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/NotificationManagerService$DumpFilter;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/RankingHelper$Record;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "records":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/RankingHelper$Record;>;"
    const/16 v9, -0x3e8

    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .local v0, "N":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_7

    invoke-virtual {p3, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/notification/RankingHelper$Record;

    .local v6, "r":Lcom/android/server/notification/RankingHelper$Record;
    if-eqz p2, :cond_0

    iget-object v7, v6, Lcom/android/server/notification/RankingHelper$Record;->pkg:Ljava/lang/String;

    invoke-virtual {p2, v7}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v7, "  AppSettings: "

    invoke-virtual {p0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v6, Lcom/android/server/notification/RankingHelper$Record;->pkg:Ljava/lang/String;

    invoke-virtual {p0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v7, " ("

    invoke-virtual {p0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, v6, Lcom/android/server/notification/RankingHelper$Record;->uid:I

    sget v8, Lcom/android/server/notification/RankingHelper$Record;->UNKNOWN_UID:I

    if-ne v7, v8, :cond_4

    const-string/jumbo v7, "UNKNOWN_UID"

    :goto_1
    invoke-virtual {p0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v7, 0x29

    invoke-virtual {p0, v7}, Ljava/io/PrintWriter;->print(C)V

    iget v7, v6, Lcom/android/server/notification/RankingHelper$Record;->importance:I

    if-eq v7, v9, :cond_1

    const-string/jumbo v7, " importance="

    invoke-virtual {p0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, v6, Lcom/android/server/notification/RankingHelper$Record;->importance:I

    invoke-static {v7}, Landroid/service/notification/NotificationListenerService$Ranking;->importanceToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_1
    iget v7, v6, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    if-eqz v7, :cond_2

    const-string/jumbo v7, " priority="

    invoke-virtual {p0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, v6, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    invoke-static {v7}, Landroid/app/Notification;->priorityToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_2
    iget v7, v6, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    if-eq v7, v9, :cond_3

    const-string/jumbo v7, " visibility="

    invoke-virtual {p0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, v6, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    invoke-static {v7}, Landroid/app/Notification;->visibilityToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_3
    const-string/jumbo v7, " showBadge="

    invoke-virtual {p0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, v6, Lcom/android/server/notification/RankingHelper$Record;->showBadge:Z

    invoke-static {v7}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    iget-object v7, v6, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "channel$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationChannel;

    .local v1, "channel":Landroid/app/NotificationChannel;
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v7, "  "

    invoke-virtual {p0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v7, "  "

    invoke-virtual {p0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_2

    .end local v1    # "channel":Landroid/app/NotificationChannel;
    .end local v2    # "channel$iterator":Ljava/util/Iterator;
    :cond_4
    iget v7, v6, Lcom/android/server/notification/RankingHelper$Record;->uid:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    .restart local v2    # "channel$iterator":Ljava/util/Iterator;
    :cond_5
    iget-object v7, v6, Lcom/android/server/notification/RankingHelper$Record;->groups:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "group$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationChannelGroup;

    .local v3, "group":Landroid/app/NotificationChannelGroup;
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v7, "  "

    invoke-virtual {p0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v7, "  "

    invoke-virtual {p0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_3

    .end local v2    # "channel$iterator":Ljava/util/Iterator;
    .end local v3    # "group":Landroid/app/NotificationChannelGroup;
    .end local v4    # "group$iterator":Ljava/util/Iterator;
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .end local v6    # "r":Lcom/android/server/notification/RankingHelper$Record;
    :cond_7
    return-void
.end method

.method private getChannelGroupLog(Ljava/lang/String;Ljava/lang/String;)Landroid/metrics/LogMaker;
    .locals 2
    .param p1, "groupId"    # Ljava/lang/String;
    .param p2, "pkg"    # Ljava/lang/String;

    .prologue
    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v1, 0x35b

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    const/16 v1, 0x35c

    invoke-virtual {v0, v1, p1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v0

    return-object v0
.end method

.method private getChannelLog(Landroid/app/NotificationChannel;Ljava/lang/String;)Landroid/metrics/LogMaker;
    .locals 3
    .param p1, "channel"    # Landroid/app/NotificationChannel;
    .param p2, "pkg"    # Ljava/lang/String;

    .prologue
    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v1, 0x358

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x359

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x35a

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    return-object v0
.end method

.method private getOrCreateRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;
    .locals 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/16 v3, -0x3e8

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, v3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/notification/RankingHelper;->getOrCreateRecord(Ljava/lang/String;IIIIZ)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v0

    return-object v0
.end method

.method private getOrCreateRecord(Ljava/lang/String;IIIIZ)Lcom/android/server/notification/RankingHelper$Record;
    .locals 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "importance"    # I
    .param p4, "priority"    # I
    .param p5, "visibility"    # I
    .param p6, "showBadge"    # Z

    .prologue
    invoke-static {p1, p2}, Lcom/android/server/notification/RankingHelper;->recordKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .local v1, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    monitor-enter v4

    :try_start_0
    sget v3, Lcom/android/server/notification/RankingHelper$Record;->UNKNOWN_UID:I

    if-ne p2, v3, :cond_1

    iget-object v3, p0, Lcom/android/server/notification/RankingHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/RankingHelper$Record;

    .local v2, "r":Lcom/android/server/notification/RankingHelper$Record;
    :goto_0
    if-nez v2, :cond_0

    new-instance v2, Lcom/android/server/notification/RankingHelper$Record;

    .end local v2    # "r":Lcom/android/server/notification/RankingHelper$Record;
    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/notification/RankingHelper$Record;-><init>(Lcom/android/server/notification/RankingHelper$Record;)V

    .restart local v2    # "r":Lcom/android/server/notification/RankingHelper$Record;
    iput-object p1, v2, Lcom/android/server/notification/RankingHelper$Record;->pkg:Ljava/lang/String;

    iput p2, v2, Lcom/android/server/notification/RankingHelper$Record;->uid:I

    iput p3, v2, Lcom/android/server/notification/RankingHelper$Record;->importance:I

    iput p4, v2, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    iput p5, v2, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    iput-boolean p6, v2, Lcom/android/server/notification/RankingHelper$Record;->showBadge:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-direct {p0, v2}, Lcom/android/server/notification/RankingHelper;->createDefaultChannelIfNeeded(Lcom/android/server/notification/RankingHelper$Record;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    iget v3, v2, Lcom/android/server/notification/RankingHelper$Record;->uid:I

    sget v5, Lcom/android/server/notification/RankingHelper$Record;->UNKNOWN_UID:I

    if-ne v3, v5, :cond_2

    iget-object v3, p0, Lcom/android/server/notification/RankingHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :goto_2
    monitor-exit v4

    return-object v2

    .end local v2    # "r":Lcom/android/server/notification/RankingHelper$Record;
    :cond_1
    :try_start_3
    iget-object v3, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/RankingHelper$Record;

    .restart local v2    # "r":Lcom/android/server/notification/RankingHelper$Record;
    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v3, "RankingHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "createDefaultChannelIfNeeded - Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2    # "r":Lcom/android/server/notification/RankingHelper$Record;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v2    # "r":Lcom/android/server/notification/RankingHelper$Record;
    :cond_2
    :try_start_4
    iget-object v3, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method private getPackageChannels()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .local v3, "packageChannels":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v6, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    monitor-enter v6

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    iget-object v5, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/RankingHelper$Record;

    .local v4, "r":Lcom/android/server/notification/RankingHelper$Record;
    const/4 v0, 0x0

    .local v0, "channelCount":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    iget-object v5, v4, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    iget-object v5, v4, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationChannel;

    invoke-virtual {v5}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v5

    if-nez v5, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object v5, v4, Lcom/android/server/notification/RankingHelper$Record;->pkg:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "channelCount":I
    .end local v2    # "j":I
    .end local v4    # "r":Lcom/android/server/notification/RankingHelper$Record;
    :cond_2
    monitor-exit v6

    return-object v3

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method private getRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    invoke-static {p1, p2}, Lcom/android/server/notification/RankingHelper;->recordKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/RankingHelper$Record;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static recordKey(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "uid"    # I

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private shouldHaveDefaultChannel(Lcom/android/server/notification/RankingHelper$Record;)Z
    .locals 5
    .param p1, "r"    # Lcom/android/server/notification/RankingHelper$Record;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    iget v2, p1, Lcom/android/server/notification/RankingHelper$Record;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p1, Lcom/android/server/notification/RankingHelper$Record;->pkg:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v1}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_0

    return v4

    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method private updateConfig()V
    .locals 3

    .prologue
    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    array-length v0, v2

    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    aget-object v2, v2, v1

    invoke-interface {v2, p0}, Lcom/android/server/notification/NotificationSignalExtractor;->setConfig(Lcom/android/server/notification/RankingConfig;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    invoke-interface {v2}, Lcom/android/server/notification/RankingHandler;->requestSort()V

    return-void
.end method


# virtual methods
.method public badgingEnabled(Landroid/os/UserHandle;)Z
    .locals 6
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .local v0, "userId":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    return v1

    :cond_0
    iget-object v3, p0, Lcom/android/server/notification/RankingHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v3

    if-gez v3, :cond_2

    iget-object v3, p0, Lcom/android/server/notification/RankingHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    iget-object v4, p0, Lcom/android/server/notification/RankingHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "notification_badging"

    invoke-static {v4, v5, v2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_2
    iget-object v1, p0, Lcom/android/server/notification/RankingHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    return v1
.end method

.method public canShowBadge(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getOrCreateRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/notification/RankingHelper$Record;->showBadge:Z

    return v0
.end method

.method clearLockedFields(Landroid/app/NotificationChannel;)V
    .locals 1
    .param p1, "channel"    # Landroid/app/NotificationChannel;

    .prologue
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/NotificationChannel;->unlockFields(I)V

    return-void
.end method

.method public createNotificationChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;Z)V
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "channel"    # Landroid/app/NotificationChannel;
    .param p4, "fromTargetApp"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getOrCreateRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v1

    .local v1, "r":Lcom/android/server/notification/RankingHelper$Record;
    if-nez v1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Invalid package"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/android/server/notification/RankingHelper$Record;->groups:Ljava/util/Map;

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "NotificationChannelGroup doesn\'t exist"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    const-string/jumbo v2, "miscellaneous"

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Reserved id"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    iget-object v2, v1, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationChannel;

    .local v0, "existing":Landroid/app/NotificationChannel;
    if-eqz v0, :cond_5

    if-eqz p4, :cond_5

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0, v4}, Landroid/app/NotificationChannel;->setDeleted(Z)V

    invoke-direct {p0, p3, p1}, Lcom/android/server/notification/RankingHelper;->getChannelLog(Landroid/app/NotificationChannel;Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    :cond_3
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/NotificationChannel;->setName(Ljava/lang/CharSequence;)V

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->isBlockableSystem()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/NotificationChannel;->setBlockableSystem(Z)V

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v2

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v3

    if-ge v2, v3, :cond_4

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/NotificationChannel;->setImportance(I)V

    :cond_4
    invoke-direct {p0}, Lcom/android/server/notification/RankingHelper;->updateConfig()V

    return-void

    :cond_5
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v2

    if-ltz v2, :cond_6

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v2

    const/4 v5, 0x5

    if-le v2, v5, :cond_7

    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Invalid importance level"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7
    if-eqz p4, :cond_8

    iget v2, v1, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_b

    move v2, v3

    :goto_0
    invoke-virtual {p3, v2}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    iget v2, v1, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    invoke-virtual {p3, v2}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    :cond_8
    invoke-virtual {p0, p3}, Lcom/android/server/notification/RankingHelper;->clearLockedFields(Landroid/app/NotificationChannel;)V

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v2

    if-ne v2, v3, :cond_9

    const/16 v2, -0x3e8

    invoke-virtual {p3, v2}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    :cond_9
    iget-boolean v2, v1, Lcom/android/server/notification/RankingHelper$Record;->showBadge:Z

    if-nez v2, :cond_a

    invoke-virtual {p3, v4}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    :cond_a
    iget-object v2, v1, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p3, p1}, Lcom/android/server/notification/RankingHelper;->getChannelLog(Landroid/app/NotificationChannel;Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    return-void

    :cond_b
    move v2, v4

    goto :goto_0
.end method

.method public createNotificationChannelGroup(Ljava/lang/String;ILandroid/app/NotificationChannelGroup;Z)V
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "group"    # Landroid/app/NotificationChannelGroup;
    .param p4, "fromTargetApp"    # Z

    .prologue
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3}, Landroid/app/NotificationChannelGroup;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getOrCreateRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v1

    .local v1, "r":Lcom/android/server/notification/RankingHelper$Record;
    if-nez v1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Invalid package"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-object v2, v1, Lcom/android/server/notification/RankingHelper$Record;->groups:Ljava/util/Map;

    invoke-virtual {p3}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationChannelGroup;

    .local v0, "oldGroup":Landroid/app/NotificationChannelGroup;
    invoke-virtual {p3, v0}, Landroid/app/NotificationChannelGroup;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p3}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lcom/android/server/notification/RankingHelper;->getChannelGroupLog(Ljava/lang/String;Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    :cond_1
    iget-object v2, v1, Lcom/android/server/notification/RankingHelper$Record;->groups:Ljava/util/Map;

    invoke-virtual {p3}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public deleteNotificationChannel(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "channelId"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v2

    .local v2, "r":Lcom/android/server/notification/RankingHelper$Record;
    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v3, v2, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v3, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationChannel;

    .local v0, "channel":Landroid/app/NotificationChannel;
    if-eqz v0, :cond_1

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/NotificationChannel;->setDeleted(Z)V

    invoke-direct {p0, v0, p1}, Lcom/android/server/notification/RankingHelper;->getChannelLog(Landroid/app/NotificationChannel;Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v1

    .local v1, "lm":Landroid/metrics/LogMaker;
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    invoke-static {v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .end local v1    # "lm":Landroid/metrics/LogMaker;
    :cond_1
    return-void
.end method

.method public deleteNotificationChannelGroup(Ljava/lang/String;ILjava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "groupId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, "deletedChannels":Ljava/util/List;, "Ljava/util/List<Landroid/app/NotificationChannel;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v4

    .local v4, "r":Lcom/android/server/notification/RankingHelper$Record;
    if-eqz v4, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    return-object v1

    :cond_1
    iget-object v5, v4, Lcom/android/server/notification/RankingHelper$Record;->groups:Ljava/util/Map;

    invoke-interface {v5, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v4, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    iget-object v5, v4, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationChannel;

    .local v3, "nc":Landroid/app/NotificationChannel;
    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/app/NotificationChannel;->setDeleted(Z)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v3    # "nc":Landroid/app/NotificationChannel;
    :cond_3
    return-object v1
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .prologue
    if-nez p3, :cond_0

    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    array-length v0, v2

    .local v0, "N":I
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mSignalExtractors.length = "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "  "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    if-nez p3, :cond_1

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "per-package config:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    const-string/jumbo v2, "Records:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-static {p1, p2, p3, v2}, Lcom/android/server/notification/RankingHelper;->dumpRecords(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    const-string/jumbo v2, "Restored without uid:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-static {p1, p2, p3, v2}, Lcom/android/server/notification/RankingHelper;->dumpRecords(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public dumpBansJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONArray;
    .locals 9
    .param p1, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .prologue
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .local v3, "bans":Lorg/json/JSONArray;
    invoke-virtual {p0}, Lcom/android/server/notification/RankingHelper;->getPackageBans()Ljava/util/Map;

    move-result-object v5

    .local v5, "packageBans":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "ban$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .local v0, "ban":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .local v7, "userId":I
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .local v6, "packageName":Ljava/lang/String;
    if-eqz p1, :cond_1

    invoke-virtual {p1, v6}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    :cond_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .local v2, "banJson":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v8, "userId"

    invoke-virtual {v2, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v8, "packageName"

    invoke-virtual {v2, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :catch_0
    move-exception v4

    .local v4, "e":Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .end local v0    # "ban":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v2    # "banJson":Lorg/json/JSONObject;
    .end local v4    # "e":Lorg/json/JSONException;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "userId":I
    :cond_2
    return-object v3
.end method

.method public dumpChannelsJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONArray;
    .locals 9
    .param p1, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .prologue
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .local v3, "channels":Lorg/json/JSONArray;
    invoke-direct {p0}, Lcom/android/server/notification/RankingHelper;->getPackageChannels()Ljava/util/Map;

    move-result-object v5

    .local v5, "packageChannels":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "channelCount$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .local v0, "channelCount":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .local v6, "packageName":Ljava/lang/String;
    if-eqz p1, :cond_1

    invoke-virtual {p1, v6}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    :cond_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .local v2, "channelCountJson":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v7, "packageName"

    invoke-virtual {v2, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v7, "channelCount"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :catch_0
    move-exception v4

    .local v4, "e":Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .end local v0    # "channelCount":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v2    # "channelCountJson":Lorg/json/JSONObject;
    .end local v4    # "e":Lorg/json/JSONException;
    .end local v6    # "packageName":Ljava/lang/String;
    :cond_2
    return-object v3
.end method

.method public dumpJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONObject;
    .locals 14
    .param p1, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .prologue
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .local v8, "ranking":Lorg/json/JSONObject;
    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V

    .local v10, "records":Lorg/json/JSONArray;
    :try_start_0
    const-string/jumbo v11, "noUid"

    iget-object v12, p0, Lcom/android/server/notification/RankingHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v12

    invoke-virtual {v8, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    iget-object v12, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    monitor-enter v12

    :try_start_1
    iget-object v11, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .local v0, "N":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v0, :cond_8

    iget-object v11, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v11, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/notification/RankingHelper$Record;

    .local v7, "r":Lcom/android/server/notification/RankingHelper$Record;
    if-eqz p1, :cond_0

    iget-object v11, v7, Lcom/android/server/notification/RankingHelper$Record;->pkg:Ljava/lang/String;

    invoke-virtual {p1, v11}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    :cond_0
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v9, "record":Lorg/json/JSONObject;
    :try_start_2
    const-string/jumbo v11, "userId"

    iget v13, v7, Lcom/android/server/notification/RankingHelper$Record;->uid:I

    invoke-static {v13}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    invoke-virtual {v9, v11, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v11, "packageName"

    iget-object v13, v7, Lcom/android/server/notification/RankingHelper$Record;->pkg:Ljava/lang/String;

    invoke-virtual {v9, v11, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget v11, v7, Lcom/android/server/notification/RankingHelper$Record;->importance:I

    const/16 v13, -0x3e8

    if-eq v11, v13, :cond_1

    const-string/jumbo v11, "importance"

    iget v13, v7, Lcom/android/server/notification/RankingHelper$Record;->importance:I

    invoke-static {v13}, Landroid/service/notification/NotificationListenerService$Ranking;->importanceToString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v11, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    iget v11, v7, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    if-eqz v11, :cond_2

    const-string/jumbo v11, "priority"

    iget v13, v7, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    invoke-static {v13}, Landroid/app/Notification;->priorityToString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v11, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    iget v11, v7, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    const/16 v13, -0x3e8

    if-eq v11, v13, :cond_3

    const-string/jumbo v11, "visibility"

    iget v13, v7, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    invoke-static {v13}, Landroid/app/Notification;->visibilityToString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v11, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    iget-boolean v11, v7, Lcom/android/server/notification/RankingHelper$Record;->showBadge:Z

    if-nez v11, :cond_4

    const-string/jumbo v11, "showBadge"

    iget-boolean v13, v7, Lcom/android/server/notification/RankingHelper$Record;->showBadge:Z

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v9, v11, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    iget-object v11, v7, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "channel$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationChannel;

    .local v1, "channel":Landroid/app/NotificationChannel;
    const-string/jumbo v11, "channel"

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->toJson()Lorg/json/JSONObject;

    move-result-object v13

    invoke-virtual {v9, v11, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .end local v1    # "channel":Landroid/app/NotificationChannel;
    .end local v2    # "channel$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v3

    :cond_5
    :try_start_3
    invoke-virtual {v10, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v9    # "record":Lorg/json/JSONObject;
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .restart local v2    # "channel$iterator":Ljava/util/Iterator;
    .restart local v9    # "record":Lorg/json/JSONObject;
    :cond_7
    :try_start_4
    iget-object v11, v7, Lcom/android/server/notification/RankingHelper$Record;->groups:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "group$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationChannelGroup;

    .local v4, "group":Landroid/app/NotificationChannelGroup;
    const-string/jumbo v11, "group"

    invoke-virtual {v4}, Landroid/app/NotificationChannelGroup;->toJson()Lorg/json/JSONObject;

    move-result-object v13

    invoke-virtual {v9, v11, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .end local v0    # "N":I
    .end local v2    # "channel$iterator":Ljava/util/Iterator;
    .end local v4    # "group":Landroid/app/NotificationChannelGroup;
    .end local v5    # "group$iterator":Ljava/util/Iterator;
    .end local v6    # "i":I
    .end local v7    # "r":Lcom/android/server/notification/RankingHelper$Record;
    .end local v9    # "record":Lorg/json/JSONObject;
    :catchall_0
    move-exception v11

    monitor-exit v12

    throw v11

    .restart local v0    # "N":I
    .restart local v6    # "i":I
    :cond_8
    monitor-exit v12

    :try_start_5
    const-string/jumbo v11, "records"

    invoke-virtual {v8, v11, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1

    :goto_4
    return-object v8

    :catch_1
    move-exception v3

    .local v3, "e":Lorg/json/JSONException;
    goto :goto_4

    .end local v0    # "N":I
    .end local v3    # "e":Lorg/json/JSONException;
    .end local v6    # "i":I
    :catch_2
    move-exception v3

    .restart local v3    # "e":Lorg/json/JSONException;
    goto/16 :goto_0
.end method

.method public extractSignals(Lcom/android/server/notification/NotificationRecord;)V
    .locals 7
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    iget-object v5, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    array-length v0, v5

    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v5, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    aget-object v1, v5, v2

    .local v1, "extractor":Lcom/android/server/notification/NotificationSignalExtractor;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/android/server/notification/NotificationSignalExtractor;->process(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;

    move-result-object v3

    .local v3, "recon":Lcom/android/server/notification/RankingReconsideration;
    if-eqz v3, :cond_0

    iget-object v5, p0, Lcom/android/server/notification/RankingHelper;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    invoke-interface {v5, v3}, Lcom/android/server/notification/RankingHandler;->requestReconsideration(Lcom/android/server/notification/RankingReconsideration;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "recon":Lcom/android/server/notification/RankingReconsideration;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v4

    .local v4, "t":Ljava/lang/Throwable;
    const-string/jumbo v5, "RankingHelper"

    const-string/jumbo v6, "NotificationSignalExtractor failed."

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v1    # "extractor":Lcom/android/server/notification/NotificationSignalExtractor;
    .end local v4    # "t":Ljava/lang/Throwable;
    :cond_1
    return-void
.end method

.method public findExtractor(Ljava/lang/Class;)Lcom/android/server/notification/NotificationSignalExtractor;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/server/notification/NotificationSignalExtractor;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .local p1, "extractorClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v3, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    array-length v0, v3

    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    aget-object v1, v3, v2

    .local v1, "extractor":Lcom/android/server/notification/NotificationSignalExtractor;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1    # "extractor":Lcom/android/server/notification/NotificationSignalExtractor;
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method public getDeletedChannelCount(Ljava/lang/String;I)I
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .local v1, "deletedCount":I
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v4

    .local v4, "r":Lcom/android/server/notification/RankingHelper$Record;
    if-nez v4, :cond_0

    return v1

    :cond_0
    iget-object v5, v4, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v5, v4, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationChannel;

    .local v3, "nc":Landroid/app/NotificationChannel;
    invoke-virtual {v3}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v3    # "nc":Landroid/app/NotificationChannel;
    :cond_2
    return v1
.end method

.method public getImportance(Ljava/lang/String;I)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getOrCreateRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v0

    iget v0, v0, Lcom/android/server/notification/RankingHelper$Record;->importance:I

    return v0
.end method

.method public getNotificationChannel(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannel;
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "channelId"    # Ljava/lang/String;
    .param p4, "includeDeleted"    # Z

    .prologue
    const/4 v3, 0x0

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getOrCreateRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v1

    .local v1, "r":Lcom/android/server/notification/RankingHelper$Record;
    if-nez v1, :cond_0

    return-object v3

    :cond_0
    if-nez p3, :cond_1

    const-string/jumbo p3, "miscellaneous"

    :cond_1
    iget-object v2, v1, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v2, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationChannel;

    .local v0, "nc":Landroid/app/NotificationChannel;
    if-eqz v0, :cond_3

    if-nez p4, :cond_2

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    :cond_2
    return-object v0

    :cond_3
    return-object v3
.end method

.method public getNotificationChannelGroup(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/NotificationChannelGroup;
    .locals 2
    .param p1, "groupId"    # Ljava/lang/String;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .prologue
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p2, p3}, Lcom/android/server/notification/RankingHelper;->getRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v0

    .local v0, "r":Lcom/android/server/notification/RankingHelper$Record;
    iget-object v1, v0, Lcom/android/server/notification/RankingHelper$Record;->groups:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationChannelGroup;

    return-object v1
.end method

.method public getNotificationChannelGroups(Ljava/lang/String;IZ)Landroid/content/pm/ParceledListSlice;
    .locals 10
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "includeDeleted"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ)",
            "Landroid/content/pm/ParceledListSlice",
            "<",
            "Landroid/app/NotificationChannelGroup;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .local v1, "groups":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/app/NotificationChannelGroup;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v6

    .local v6, "r":Lcom/android/server/notification/RankingHelper$Record;
    if-nez v6, :cond_0

    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object v7

    return-object v7

    :cond_0
    new-instance v5, Landroid/app/NotificationChannelGroup;

    invoke-direct {v5, v9, v9}, Landroid/app/NotificationChannelGroup;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .local v5, "nonGrouped":Landroid/app/NotificationChannelGroup;
    iget-object v7, v6, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_5

    iget-object v7, v6, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationChannel;

    .local v3, "nc":Landroid/app/NotificationChannel;
    if-nez p3, :cond_1

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_3

    :cond_1
    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    iget-object v7, v6, Lcom/android/server/notification/RankingHelper$Record;->groups:Ljava/util/Map;

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationChannelGroup;

    .local v4, "ncg":Landroid/app/NotificationChannelGroup;
    if-nez v4, :cond_2

    iget-object v7, v6, Lcom/android/server/notification/RankingHelper$Record;->groups:Ljava/util/Map;

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationChannelGroup;

    invoke-virtual {v7}, Landroid/app/NotificationChannelGroup;->clone()Landroid/app/NotificationChannelGroup;

    move-result-object v4

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {v4, v3}, Landroid/app/NotificationChannelGroup;->addChannel(Landroid/app/NotificationChannel;)V

    .end local v4    # "ncg":Landroid/app/NotificationChannelGroup;
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v5, v3}, Landroid/app/NotificationChannelGroup;->addChannel(Landroid/app/NotificationChannel;)V

    goto :goto_1

    .end local v3    # "nc":Landroid/app/NotificationChannel;
    :cond_5
    invoke-virtual {v5}, Landroid/app/NotificationChannelGroup;->getChannels()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_6

    invoke-interface {v1, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    new-instance v7, Landroid/content/pm/ParceledListSlice;

    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v7, v8}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v7
.end method

.method public getNotificationChannelGroups(Ljava/lang/String;I)Ljava/util/Collection;
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Collection",
            "<",
            "Landroid/app/NotificationChannelGroup;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v0

    .local v0, "r":Lcom/android/server/notification/RankingHelper$Record;
    if-nez v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/android/server/notification/RankingHelper$Record;->groups:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    return-object v1
.end method

.method public getNotificationChannels(Ljava/lang/String;IZ)Landroid/content/pm/ParceledListSlice;
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "includeDeleted"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ)",
            "Landroid/content/pm/ParceledListSlice",
            "<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, "channels":Ljava/util/List;, "Ljava/util/List<Landroid/app/NotificationChannel;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v4

    .local v4, "r":Lcom/android/server/notification/RankingHelper$Record;
    if-nez v4, :cond_0

    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object v5

    return-object v5

    :cond_0
    iget-object v5, v4, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    iget-object v5, v4, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationChannel;

    .local v3, "nc":Landroid/app/NotificationChannel;
    if-nez p3, :cond_1

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    :cond_1
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v3    # "nc":Landroid/app/NotificationChannel;
    :cond_3
    new-instance v5, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v5, v1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v5
.end method

.method public getPackageBans()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v5, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .local v0, "N":I
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2, v0}, Landroid/util/ArrayMap;-><init>(I)V

    .local v2, "packageBans":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v4, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/RankingHelper$Record;

    .local v3, "r":Lcom/android/server/notification/RankingHelper$Record;
    iget v4, v3, Lcom/android/server/notification/RankingHelper$Record;->importance:I

    if-nez v4, :cond_0

    iget v4, v3, Lcom/android/server/notification/RankingHelper$Record;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v6, v3, Lcom/android/server/notification/RankingHelper$Record;->pkg:Ljava/lang/String;

    invoke-virtual {v2, v4, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v3    # "r":Lcom/android/server/notification/RankingHelper$Record;
    :cond_1
    monitor-exit v5

    return-object v2

    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "packageBans":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public getPackagePriority(Ljava/lang/String;I)I
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getOrCreateRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v0

    iget v0, v0, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    return v0
.end method

.method getPackageVisibility(Ljava/lang/String;I)I
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getOrCreateRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v0

    iget v0, v0, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    return v0
.end method

.method public indexOf(Ljava/util/ArrayList;Lcom/android/server/notification/NotificationRecord;)I
    .locals 1
    .param p2, "target"    # Lcom/android/server/notification/NotificationRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;",
            "Lcom/android/server/notification/NotificationRecord;",
            ")I"
        }
    .end annotation

    .prologue
    .local p1, "notificationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    iget-object v0, p0, Lcom/android/server/notification/RankingHelper;->mFinalComparator:Lcom/android/server/notification/GlobalSortKeyComparator;

    invoke-static {p1, p2, v0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    return v0
.end method

.method lockFieldsForUpdate(Landroid/app/NotificationChannel;Landroid/app/NotificationChannel;)V
    .locals 2
    .param p1, "original"    # Landroid/app/NotificationChannel;
    .param p2, "update"    # Landroid/app/NotificationChannel;

    .prologue
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    :cond_0
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    :cond_1
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v1

    if-eq v0, v1, :cond_2

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    :cond_2
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->shouldShowLights()Z

    move-result v0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->shouldShowLights()Z

    move-result v1

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getLightColor()I

    move-result v0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getLightColor()I

    move-result v1

    if-eq v0, v1, :cond_4

    :cond_3
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    :cond_4
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const/16 v0, 0x20

    invoke-virtual {p2, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    :cond_5
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getVibrationPattern()[J

    move-result-object v0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getVibrationPattern()[J

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->shouldVibrate()Z

    move-result v0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->shouldVibrate()Z

    move-result v1

    if-eq v0, v1, :cond_7

    :cond_6
    const/16 v0, 0x10

    invoke-virtual {p2, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    :cond_7
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->canShowBadge()Z

    move-result v0

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->canShowBadge()Z

    move-result v1

    if-eq v0, v1, :cond_8

    const/16 v0, 0x80

    invoke-virtual {p2, v0}, Landroid/app/NotificationChannel;->lockFields(I)V

    :cond_8
    return-void
.end method

.method protected onLocaleChanged(Landroid/content/Context;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .prologue
    iget-object v4, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v3, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/RankingHelper$Record;

    .local v2, "record":Lcom/android/server/notification/RankingHelper$Record;
    iget v3, v2, Lcom/android/server/notification/RankingHelper$Record;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-ne v3, p2, :cond_0

    iget-object v3, v2, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    const-string/jumbo v5, "miscellaneous"

    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    const-string/jumbo v5, "miscellaneous"

    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationChannel;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10401e6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/app/NotificationChannel;->setName(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v2    # "record":Lcom/android/server/notification/RankingHelper$Record;
    :cond_1
    monitor-exit v4

    return-void

    .end local v0    # "N":I
    .end local v1    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public onPackagesChanged(ZI[Ljava/lang/String;[I)V
    .locals 15
    .param p1, "removingPackage"    # Z
    .param p2, "changeUserId"    # I
    .param p3, "pkgList"    # [Ljava/lang/String;
    .param p4, "uidList"    # [I

    .prologue
    if-eqz p3, :cond_0

    move-object/from16 v0, p3

    array-length v9, v0

    if-nez v9, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v8, 0x0

    .local v8, "updated":Z
    if-eqz p1, :cond_2

    move-object/from16 v0, p3

    array-length v9, v0

    move-object/from16 v0, p4

    array-length v10, v0

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v6

    .local v6, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v6, :cond_5

    aget-object v4, p3, v3

    .local v4, "pkg":Ljava/lang/String;
    aget v7, p4, v3

    .local v7, "uid":I
    iget-object v10, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    monitor-enter v10

    :try_start_0
    iget-object v9, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-static {v4, v7}, Lcom/android/server/notification/RankingHelper;->recordKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v10

    iget-object v9, p0, Lcom/android/server/notification/RankingHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-virtual {v9, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v8, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9

    .end local v3    # "i":I
    .end local v4    # "pkg":Ljava/lang/String;
    .end local v6    # "size":I
    .end local v7    # "uid":I
    :cond_2
    const/4 v9, 0x0

    move-object/from16 v0, p3

    array-length v11, v0

    move v10, v9

    :goto_1
    if-ge v10, v11, :cond_5

    aget-object v4, p3, v10

    .restart local v4    # "pkg":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/notification/RankingHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-virtual {v9, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/RankingHelper$Record;

    .local v5, "r":Lcom/android/server/notification/RankingHelper$Record;
    if-eqz v5, :cond_3

    :try_start_1
    iget-object v9, p0, Lcom/android/server/notification/RankingHelper;->mPm:Landroid/content/pm/PackageManager;

    iget-object v12, v5, Lcom/android/server/notification/RankingHelper$Record;->pkg:Ljava/lang/String;

    move/from16 v0, p2

    invoke-virtual {v9, v12, v0}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v9

    iput v9, v5, Lcom/android/server/notification/RankingHelper$Record;->uid:I

    iget-object v9, p0, Lcom/android/server/notification/RankingHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-virtual {v9, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v12, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    monitor-enter v12
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v9, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    iget-object v13, v5, Lcom/android/server/notification/RankingHelper$Record;->pkg:Ljava/lang/String;

    iget v14, v5, Lcom/android/server/notification/RankingHelper$Record;->uid:I

    invoke-static {v13, v14}, Lcom/android/server/notification/RankingHelper;->recordKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    monitor-exit v12
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    const/4 v8, 0x1

    :cond_3
    :goto_2
    :try_start_4
    iget-object v9, p0, Lcom/android/server/notification/RankingHelper;->mPm:Landroid/content/pm/PackageManager;

    move/from16 v0, p2

    invoke-virtual {v9, v4, v0}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v9

    invoke-direct {p0, v4, v9}, Lcom/android/server/notification/RankingHelper;->getRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v2

    .local v2, "fullRecord":Lcom/android/server/notification/RankingHelper$Record;
    if-eqz v2, :cond_4

    invoke-direct {p0, v2}, Lcom/android/server/notification/RankingHelper;->createDefaultChannelIfNeeded(Lcom/android/server/notification/RankingHelper$Record;)V

    invoke-direct {p0, v2}, Lcom/android/server/notification/RankingHelper;->deleteDefaultChannelIfNeeded(Lcom/android/server/notification/RankingHelper$Record;)V
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    .end local v2    # "fullRecord":Lcom/android/server/notification/RankingHelper$Record;
    :cond_4
    :goto_3
    add-int/lit8 v9, v10, 0x1

    move v10, v9

    goto :goto_1

    :catchall_1
    move-exception v9

    :try_start_5
    monitor-exit v12

    throw v9
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_2

    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v4    # "pkg":Ljava/lang/String;
    .end local v5    # "r":Lcom/android/server/notification/RankingHelper$Record;
    :cond_5
    if-eqz v8, :cond_6

    invoke-direct {p0}, Lcom/android/server/notification/RankingHelper;->updateConfig()V

    :cond_6
    return-void

    .restart local v4    # "pkg":Ljava/lang/String;
    .restart local v5    # "r":Lcom/android/server/notification/RankingHelper$Record;
    :catch_1
    move-exception v1

    .restart local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_3
.end method

.method public onUserRemoved(I)V
    .locals 5
    .param p1, "userId"    # I

    .prologue
    iget-object v4, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    iget-object v3, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/RankingHelper$Record;

    .local v2, "record":Lcom/android/server/notification/RankingHelper$Record;
    iget v3, v2, Lcom/android/server/notification/RankingHelper$Record;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-ne v3, p1, :cond_0

    iget-object v3, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .end local v2    # "record":Lcom/android/server/notification/RankingHelper$Record;
    :cond_1
    monitor-exit v4

    return-void

    .end local v0    # "N":I
    .end local v1    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public onlyHasDefaultChannel(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v3, 0x1

    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getOrCreateRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v0

    .local v0, "r":Lcom/android/server/notification/RankingHelper$Record;
    iget-object v1, v0, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ne v1, v3, :cond_0

    iget-object v1, v0, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    const-string/jumbo v2, "miscellaneous"

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v3

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public permanentlyDeleteNotificationChannel(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "channelId"    # Ljava/lang/String;

    .prologue
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v0

    .local v0, "r":Lcom/android/server/notification/RankingHelper$Record;
    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public permanentlyDeleteNotificationChannels(Ljava/lang/String;I)V
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v3

    .local v3, "r":Lcom/android/server/notification/RankingHelper$Record;
    if-nez v3, :cond_0

    return-void

    :cond_0
    iget-object v4, v3, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "N":I
    move v1, v0

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    iget-object v4, v3, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, "key":Ljava/lang/String;
    const-string/jumbo v4, "miscellaneous"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v3, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .end local v2    # "key":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public readXml(Lorg/xmlpull/v1/XmlPullParser;Z)V
    .locals 21
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "forRestore"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v20

    .local v20, "type":I
    const/4 v2, 0x2

    move/from16 v0, v20

    if-eq v0, v2, :cond_0

    return-void

    :cond_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v18

    .local v18, "tag":Ljava/lang/String;
    const-string/jumbo v2, "ranking"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/RankingHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    :cond_2
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v20

    const/4 v2, 0x1

    move/from16 v0, v20

    if-eq v0, v2, :cond_a

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v18

    const/4 v2, 0x3

    move/from16 v0, v20

    if-ne v0, v2, :cond_3

    const-string/jumbo v2, "ranking"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-void

    :cond_3
    const/4 v2, 0x2

    move/from16 v0, v20

    if-ne v0, v2, :cond_2

    const-string/jumbo v2, "package"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "uid"

    sget v5, Lcom/android/server/notification/RankingHelper$Record;->UNKNOWN_UID:I

    move-object/from16 v0, p1

    invoke-static {v0, v2, v5}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v4

    .local v4, "uid":I
    const-string/jumbo v2, "name"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "name":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz p2, :cond_4

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/RankingHelper;->mPm:Landroid/content/pm/PackageManager;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    :cond_4
    :goto_1
    const-string/jumbo v2, "importance"

    const/16 v5, -0x3e8

    move-object/from16 v0, p1

    invoke-static {v0, v2, v5}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v5

    const-string/jumbo v2, "priority"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2, v6}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v6

    const-string/jumbo v2, "visibility"

    const/16 v7, -0x3e8

    move-object/from16 v0, p1

    invoke-static {v0, v2, v7}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v7

    const-string/jumbo v2, "show_badge"

    const/4 v8, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v2, v8}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v8

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/server/notification/RankingHelper;->getOrCreateRecord(Ljava/lang/String;IIIIZ)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v17

    .local v17, "r":Lcom/android/server/notification/RankingHelper$Record;
    const-string/jumbo v2, "importance"

    const/16 v5, -0x3e8

    move-object/from16 v0, p1

    invoke-static {v0, v2, v5}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, v17

    iput v2, v0, Lcom/android/server/notification/RankingHelper$Record;->importance:I

    const-string/jumbo v2, "priority"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2, v5}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, v17

    iput v2, v0, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    const-string/jumbo v2, "visibility"

    const/16 v5, -0x3e8

    move-object/from16 v0, p1

    invoke-static {v0, v2, v5}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, v17

    iput v2, v0, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    const-string/jumbo v2, "show_badge"

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v2, v5}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, v17

    iput-boolean v2, v0, Lcom/android/server/notification/RankingHelper$Record;->showBadge:Z

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v16

    .local v16, "innerDepth":I
    :cond_5
    :goto_2
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v20

    const/4 v2, 0x1

    move/from16 v0, v20

    if-eq v0, v2, :cond_9

    const/4 v2, 0x3

    move/from16 v0, v20

    if-ne v0, v2, :cond_6

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    move/from16 v0, v16

    if-le v2, v0, :cond_9

    :cond_6
    const/4 v2, 0x3

    move/from16 v0, v20

    if-eq v0, v2, :cond_5

    const/4 v2, 0x4

    move/from16 v0, v20

    if-eq v0, v2, :cond_5

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v19

    .local v19, "tagName":Ljava/lang/String;
    const-string/jumbo v2, "channelGroup"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string/jumbo v2, "id"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .local v15, "id":Ljava/lang/String;
    const-string/jumbo v2, "name"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .local v14, "groupName":Ljava/lang/CharSequence;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    new-instance v13, Landroid/app/NotificationChannelGroup;

    invoke-direct {v13, v15, v14}, Landroid/app/NotificationChannelGroup;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .local v13, "group":Landroid/app/NotificationChannelGroup;
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/server/notification/RankingHelper$Record;->groups:Ljava/util/Map;

    invoke-interface {v2, v15, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v13    # "group":Landroid/app/NotificationChannelGroup;
    .end local v14    # "groupName":Ljava/lang/CharSequence;
    .end local v15    # "id":Ljava/lang/String;
    :cond_7
    const-string/jumbo v2, "channel"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string/jumbo v2, "id"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .restart local v15    # "id":Ljava/lang/String;
    const-string/jumbo v2, "name"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .local v11, "channelName":Ljava/lang/String;
    const-string/jumbo v2, "importance"

    const/16 v5, -0x3e8

    move-object/from16 v0, p1

    invoke-static {v0, v2, v5}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v10

    .local v10, "channelImportance":I
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_5

    new-instance v9, Landroid/app/NotificationChannel;

    invoke-direct {v9, v15, v11, v10}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .local v9, "channel":Landroid/app/NotificationChannel;
    if-eqz p2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/RankingHelper;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-virtual {v9, v0, v2}, Landroid/app/NotificationChannel;->populateFromXmlForRestore(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/Context;)V

    :goto_3
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v2, v15, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_8
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/app/NotificationChannel;->populateFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_3

    .end local v9    # "channel":Landroid/app/NotificationChannel;
    .end local v10    # "channelImportance":I
    .end local v11    # "channelName":Ljava/lang/String;
    .end local v15    # "id":Ljava/lang/String;
    .end local v19    # "tagName":Ljava/lang/String;
    :cond_9
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/notification/RankingHelper;->deleteDefaultChannelIfNeeded(Lcom/android/server/notification/RankingHelper$Record;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v12

    .local v12, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v2, "RankingHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "deleteDefaultChannelIfNeeded - Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "uid":I
    .end local v12    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v16    # "innerDepth":I
    .end local v17    # "r":Lcom/android/server/notification/RankingHelper$Record;
    :cond_a
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "Failed to reach END_DOCUMENT"

    invoke-direct {v2, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .restart local v3    # "name":Ljava/lang/String;
    .restart local v4    # "uid":I
    :catch_1
    move-exception v12

    .restart local v12    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto/16 :goto_1
.end method

.method public setEnabled(Ljava/lang/String;IZ)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "enabled"    # Z

    .prologue
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getImportance(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .local v0, "wasEnabled":Z
    :goto_0
    if-ne v0, p3, :cond_1

    return-void

    .end local v0    # "wasEnabled":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "wasEnabled":Z
    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    const/16 v1, -0x3e8

    :cond_2
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/notification/RankingHelper;->setImportance(Ljava/lang/String;II)V

    return-void
.end method

.method public setImportance(Ljava/lang/String;II)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "importance"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getOrCreateRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v0

    iput p3, v0, Lcom/android/server/notification/RankingHelper$Record;->importance:I

    invoke-direct {p0}, Lcom/android/server/notification/RankingHelper;->updateConfig()V

    return-void
.end method

.method public setShowBadge(Ljava/lang/String;IZ)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "showBadge"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getOrCreateRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v0

    iput-boolean p3, v0, Lcom/android/server/notification/RankingHelper$Record;->showBadge:Z

    invoke-direct {p0}, Lcom/android/server/notification/RankingHelper;->updateConfig()V

    return-void
.end method

.method public sort(Ljava/util/ArrayList;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "notificationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "N":I
    add-int/lit8 v6, v0, -0x1

    .local v6, "i":I
    :goto_0
    if-ltz v6, :cond_0

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/notification/NotificationRecord;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/server/notification/NotificationRecord;->setGlobalSortKey(Ljava/lang/String;)V

    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    :cond_0
    iget-object v9, p0, Lcom/android/server/notification/RankingHelper;->mPreliminaryComparator:Lcom/android/server/notification/NotificationComparator;

    invoke-static {p1, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v10, p0, Lcom/android/server/notification/RankingHelper;->mProxyByGroupTmp:Landroid/util/ArrayMap;

    monitor-enter v10

    add-int/lit8 v6, v0, -0x1

    :goto_1
    if-ltz v6, :cond_2

    :try_start_0
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/notification/NotificationRecord;

    .local v8, "record":Lcom/android/server/notification/NotificationRecord;
    invoke-virtual {v8, v6}, Lcom/android/server/notification/NotificationRecord;->setAuthoritativeRank(I)V

    invoke-virtual {v8}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v2

    .local v2, "groupKey":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/notification/RankingHelper;->mProxyByGroupTmp:Landroid/util/ArrayMap;

    invoke-virtual {v9, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/NotificationRecord;

    .local v1, "existingProxy":Lcom/android/server/notification/NotificationRecord;
    if-nez v1, :cond_1

    iget-object v9, p0, Lcom/android/server/notification/RankingHelper;->mProxyByGroupTmp:Landroid/util/ArrayMap;

    invoke-virtual {v9, v2, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .end local v1    # "existingProxy":Lcom/android/server/notification/NotificationRecord;
    .end local v2    # "groupKey":Ljava/lang/String;
    .end local v8    # "record":Lcom/android/server/notification/NotificationRecord;
    :cond_2
    const/4 v6, 0x0

    :goto_2
    if-ge v6, v0, :cond_7

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/notification/NotificationRecord;

    .restart local v8    # "record":Lcom/android/server/notification/NotificationRecord;
    iget-object v9, p0, Lcom/android/server/notification/RankingHelper;->mProxyByGroupTmp:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .local v3, "groupProxy":Lcom/android/server/notification/NotificationRecord;
    invoke-virtual {v8}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Notification;->getSortKey()Ljava/lang/String;

    move-result-object v4

    .local v4, "groupSortKey":Ljava/lang/String;
    if-nez v4, :cond_3

    const-string/jumbo v5, "nsk"

    .local v5, "groupSortKeyPortion":Ljava/lang/String;
    :goto_3
    invoke-virtual {v8}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v7

    .local v7, "isGroupSummary":Z
    const-string/jumbo v11, "intrsv=%c:grnk=0x%04x:gsmry=%c:%s:rnk=0x%04x"

    const/4 v9, 0x5

    new-array v12, v9, [Ljava/lang/Object;

    invoke-virtual {v8}, Lcom/android/server/notification/NotificationRecord;->isRecentlyIntrusive()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v8}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v9

    const/4 v13, 0x1

    if-le v9, v13, :cond_5

    const/16 v9, 0x30

    :goto_4
    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    const/4 v13, 0x0

    aput-object v9, v12, v13

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getAuthoritativeRank()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v13, 0x1

    aput-object v9, v12, v13

    if-eqz v7, :cond_6

    const/16 v9, 0x30

    :goto_5
    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    const/4 v13, 0x2

    aput-object v9, v12, v13

    const/4 v9, 0x3

    aput-object v5, v12, v9

    invoke-virtual {v8}, Lcom/android/server/notification/NotificationRecord;->getAuthoritativeRank()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v13, 0x4

    aput-object v9, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/notification/NotificationRecord;->setGlobalSortKey(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .end local v5    # "groupSortKeyPortion":Ljava/lang/String;
    .end local v7    # "isGroupSummary":Z
    :cond_3
    const-string/jumbo v9, ""

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const-string/jumbo v5, "esk"

    .restart local v5    # "groupSortKeyPortion":Ljava/lang/String;
    goto :goto_3

    .end local v5    # "groupSortKeyPortion":Ljava/lang/String;
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "gsk="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "groupSortKeyPortion":Ljava/lang/String;
    goto :goto_3

    .restart local v7    # "isGroupSummary":Z
    :cond_5
    const/16 v9, 0x31

    goto :goto_4

    :cond_6
    const/16 v9, 0x31

    goto :goto_5

    .end local v3    # "groupProxy":Lcom/android/server/notification/NotificationRecord;
    .end local v4    # "groupSortKey":Ljava/lang/String;
    .end local v5    # "groupSortKeyPortion":Ljava/lang/String;
    .end local v7    # "isGroupSummary":Z
    .end local v8    # "record":Lcom/android/server/notification/NotificationRecord;
    :cond_7
    iget-object v9, p0, Lcom/android/server/notification/RankingHelper;->mProxyByGroupTmp:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v10

    iget-object v9, p0, Lcom/android/server/notification/RankingHelper;->mFinalComparator:Lcom/android/server/notification/GlobalSortKeyComparator;

    invoke-static {p1, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void

    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9
.end method

.method public updateBadgingEnabled()V
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/android/server/notification/RankingHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    if-nez v5, :cond_0

    new-instance v5, Landroid/util/SparseBooleanArray;

    invoke-direct {v5}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v5, p0, Lcom/android/server/notification/RankingHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    :cond_0
    const/4 v0, 0x0

    .local v0, "changed":Z
    const/4 v1, 0x0

    .end local v0    # "changed":Z
    .local v1, "index":I
    :goto_0
    iget-object v5, p0, Lcom/android/server/notification/RankingHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    if-ge v1, v5, :cond_3

    iget-object v5, p0, Lcom/android/server/notification/RankingHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    .local v4, "userId":I
    iget-object v5, p0, Lcom/android/server/notification/RankingHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    .local v3, "oldValue":Z
    iget-object v5, p0, Lcom/android/server/notification/RankingHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "notification_badging"

    invoke-static {v5, v8, v6, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-eqz v5, :cond_1

    const/4 v2, 0x1

    .local v2, "newValue":Z
    :goto_1
    iget-object v5, p0, Lcom/android/server/notification/RankingHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v4, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    if-eq v3, v2, :cond_2

    move v5, v6

    :goto_2
    or-int/2addr v0, v5

    .local v0, "changed":Z
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "changed":Z
    .end local v2    # "newValue":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "newValue":Z
    goto :goto_1

    :cond_2
    move v5, v7

    goto :goto_2

    .end local v2    # "newValue":Z
    .end local v3    # "oldValue":Z
    .end local v4    # "userId":I
    :cond_3
    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/server/notification/RankingHelper;->updateConfig()V

    :cond_4
    return-void
.end method

.method public updateNotificationChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;Z)V
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "updatedChannel"    # Landroid/app/NotificationChannel;
    .param p4, "fromUser"    # Z

    .prologue
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getOrCreateRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v1

    .local v1, "r":Lcom/android/server/notification/RankingHelper$Record;
    if-nez v1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Invalid package"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-object v2, v1, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationChannel;

    .local v0, "channel":Landroid/app/NotificationChannel;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Channel does not exist"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    const/16 v2, -0x3e8

    invoke-virtual {p3, v2}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    :cond_3
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/app/NotificationChannel;->unlockFields(I)V

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/app/NotificationChannel;->lockFields(I)V

    if-eqz p4, :cond_4

    invoke-virtual {p0, v0, p3}, Lcom/android/server/notification/RankingHelper;->lockFieldsForUpdate(Landroid/app/NotificationChannel;Landroid/app/NotificationChannel;)V

    :cond_4
    iget-object v2, v1, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "miscellaneous"

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v2

    iput v2, v1, Lcom/android/server/notification/RankingHelper$Record;->importance:I

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x2

    :goto_0
    iput v2, v1, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v2

    iput v2, v1, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->canShowBadge()Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/server/notification/RankingHelper$Record;->showBadge:Z

    :cond_5
    invoke-virtual {v0, p3}, Landroid/app/NotificationChannel;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-direct {p0, p3, p1}, Lcom/android/server/notification/RankingHelper;->getChannelLog(Landroid/app/NotificationChannel;Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    :cond_6
    invoke-direct {p0}, Lcom/android/server/notification/RankingHelper;->updateConfig()V

    return-void

    :cond_7
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public writeXml(Lorg/xmlpull/v1/XmlSerializer;Z)V
    .locals 12
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "forBackup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string/jumbo v8, "ranking"

    const/4 v9, 0x0

    invoke-interface {p1, v9, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v8, "version"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {p1, v10, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v9, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    monitor-enter v9

    :try_start_0
    iget-object v8, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .local v0, "N":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v0, :cond_d

    iget-object v8, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v8, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/notification/RankingHelper$Record;

    .local v7, "r":Lcom/android/server/notification/RankingHelper$Record;
    if-eqz p2, :cond_1

    iget v8, v7, Lcom/android/server/notification/RankingHelper$Record;->uid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    iget v8, v7, Lcom/android/server/notification/RankingHelper$Record;->importance:I

    const/16 v10, -0x3e8

    if-ne v8, v10, :cond_2

    iget v8, v7, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    if-eqz v8, :cond_7

    :cond_2
    const/4 v5, 0x1

    .local v5, "hasNonDefaultSettings":Z
    :goto_2
    if-eqz v5, :cond_0

    const-string/jumbo v8, "package"

    const/4 v10, 0x0

    invoke-interface {p1, v10, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v8, "name"

    iget-object v10, v7, Lcom/android/server/notification/RankingHelper$Record;->pkg:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-interface {p1, v11, v8, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget v8, v7, Lcom/android/server/notification/RankingHelper$Record;->importance:I

    const/16 v10, -0x3e8

    if-eq v8, v10, :cond_3

    const-string/jumbo v8, "importance"

    iget v10, v7, Lcom/android/server/notification/RankingHelper$Record;->importance:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {p1, v11, v8, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_3
    iget v8, v7, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    if-eqz v8, :cond_4

    const-string/jumbo v8, "priority"

    iget v10, v7, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {p1, v11, v8, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_4
    iget v8, v7, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    const/16 v10, -0x3e8

    if-eq v8, v10, :cond_5

    const-string/jumbo v8, "visibility"

    iget v10, v7, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {p1, v11, v8, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_5
    const-string/jumbo v8, "show_badge"

    iget-boolean v10, v7, Lcom/android/server/notification/RankingHelper$Record;->showBadge:Z

    invoke-static {v10}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {p1, v11, v8, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    if-nez p2, :cond_6

    const-string/jumbo v8, "uid"

    iget v10, v7, Lcom/android/server/notification/RankingHelper$Record;->uid:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {p1, v11, v8, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_6
    iget-object v8, v7, Lcom/android/server/notification/RankingHelper$Record;->groups:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "group$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationChannelGroup;

    .local v3, "group":Landroid/app/NotificationChannelGroup;
    invoke-virtual {v3, p1}, Landroid/app/NotificationChannelGroup;->writeXml(Lorg/xmlpull/v1/XmlSerializer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .end local v0    # "N":I
    .end local v3    # "group":Landroid/app/NotificationChannelGroup;
    .end local v4    # "group$iterator":Ljava/util/Iterator;
    .end local v5    # "hasNonDefaultSettings":Z
    .end local v6    # "i":I
    .end local v7    # "r":Lcom/android/server/notification/RankingHelper$Record;
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8

    .restart local v0    # "N":I
    .restart local v6    # "i":I
    .restart local v7    # "r":Lcom/android/server/notification/RankingHelper$Record;
    :cond_7
    :try_start_1
    iget v8, v7, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    const/16 v10, -0x3e8

    if-ne v8, v10, :cond_2

    iget-boolean v8, v7, Lcom/android/server/notification/RankingHelper$Record;->showBadge:Z

    if-eqz v8, :cond_2

    iget-object v8, v7, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    if-gtz v8, :cond_2

    iget-object v8, v7, Lcom/android/server/notification/RankingHelper$Record;->groups:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v8

    if-lez v8, :cond_8

    const/4 v5, 0x1

    .restart local v5    # "hasNonDefaultSettings":Z
    goto/16 :goto_2

    .end local v5    # "hasNonDefaultSettings":Z
    :cond_8
    const/4 v5, 0x0

    .restart local v5    # "hasNonDefaultSettings":Z
    goto/16 :goto_2

    .restart local v4    # "group$iterator":Ljava/util/Iterator;
    :cond_9
    iget-object v8, v7, Lcom/android/server/notification/RankingHelper$Record;->channels:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "channel$iterator":Ljava/util/Iterator;
    :cond_a
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationChannel;

    .local v1, "channel":Landroid/app/NotificationChannel;
    if-eqz p2, :cond_b

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->isDeleted()Z

    move-result v8

    if-nez v8, :cond_a

    iget-object v8, p0, Lcom/android/server/notification/RankingHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v8}, Landroid/app/NotificationChannel;->writeXmlForBackup(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/Context;)V

    goto :goto_4

    :cond_b
    invoke-virtual {v1, p1}, Landroid/app/NotificationChannel;->writeXml(Lorg/xmlpull/v1/XmlSerializer;)V

    goto :goto_4

    .end local v1    # "channel":Landroid/app/NotificationChannel;
    :cond_c
    const-string/jumbo v8, "package"

    const/4 v10, 0x0

    invoke-interface {p1, v10, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .end local v2    # "channel$iterator":Ljava/util/Iterator;
    .end local v4    # "group$iterator":Ljava/util/Iterator;
    .end local v5    # "hasNonDefaultSettings":Z
    .end local v7    # "r":Lcom/android/server/notification/RankingHelper$Record;
    :cond_d
    monitor-exit v9

    const-string/jumbo v8, "ranking"

    const/4 v9, 0x0

    invoke-interface {p1, v9, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method
