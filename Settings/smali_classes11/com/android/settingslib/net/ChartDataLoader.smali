.class public Lcom/android/settingslib/net/ChartDataLoader;
.super Landroid/content/AsyncTaskLoader;
.source "ChartDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader<",
        "Lcom/android/settingslib/net/ChartData;",
        ">;"
    }
.end annotation


# static fields
.field private static final KEY_APP:Ljava/lang/String; = "app"

.field private static final KEY_FIELDS:Ljava/lang/String; = "fields"

.field private static final KEY_TEMPLATE:Ljava/lang/String; = "template"


# instance fields
.field private final mArgs:Landroid/os/Bundle;

.field private final mSession:Landroid/net/INetworkStatsSession;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/INetworkStatsSession;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settingslib/net/ChartDataLoader;->mSession:Landroid/net/INetworkStatsSession;

    iput-object p3, p0, Lcom/android/settingslib/net/ChartDataLoader;->mArgs:Landroid/os/Bundle;

    return-void
.end method

.method public static buildArgs(Landroid/net/NetworkTemplate;Lcom/android/settingslib/AppItem;)Landroid/os/Bundle;
    .locals 1

    const/16 v0, 0xa

    invoke-static {p0, p1, v0}, Lcom/android/settingslib/net/ChartDataLoader;->buildArgs(Landroid/net/NetworkTemplate;Lcom/android/settingslib/AppItem;I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static buildArgs(Landroid/net/NetworkTemplate;Lcom/android/settingslib/AppItem;I)Landroid/os/Bundle;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "template"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "app"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "fields"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method private collectHistoryForUid(Landroid/net/NetworkTemplate;IILandroid/net/NetworkStatsHistory;)Landroid/net/NetworkStatsHistory;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settingslib/net/ChartDataLoader;->mSession:Landroid/net/INetworkStatsSession;

    const/4 v4, 0x0

    const/16 v5, 0xa

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Landroid/net/INetworkStatsSession;->getHistoryForUid(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    if-eqz p4, :cond_0

    invoke-virtual {p4, v0}, Landroid/net/NetworkStatsHistory;->recordEntireHistory(Landroid/net/NetworkStatsHistory;)V

    return-object p4

    :cond_0
    return-object v0
.end method

.method private loadInBackground(Landroid/net/NetworkTemplate;Lcom/android/settingslib/AppItem;I)Lcom/android/settingslib/net/ChartData;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/android/settingslib/net/ChartData;

    invoke-direct {v0}, Lcom/android/settingslib/net/ChartData;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/net/ChartDataLoader;->mSession:Landroid/net/INetworkStatsSession;

    invoke-interface {v1, p1, p3}, Landroid/net/INetworkStatsSession;->getHistoryForNetwork(Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settingslib/net/ChartData;->network:Landroid/net/NetworkStatsHistory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "ChartDataLoader"

    const-string v3, "mSession.getHistoryForNetwork error."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    if-eqz p2, :cond_2

    iget-object v1, p2, Lcom/android/settingslib/AppItem;->uids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_0

    iget-object v4, p2, Lcom/android/settingslib/AppItem;->uids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    iget-object v5, v0, Lcom/android/settingslib/net/ChartData;->detailDefault:Landroid/net/NetworkStatsHistory;

    invoke-direct {p0, p1, v4, v2, v5}, Lcom/android/settingslib/net/ChartDataLoader;->collectHistoryForUid(Landroid/net/NetworkTemplate;IILandroid/net/NetworkStatsHistory;)Landroid/net/NetworkStatsHistory;

    move-result-object v5

    iput-object v5, v0, Lcom/android/settingslib/net/ChartData;->detailDefault:Landroid/net/NetworkStatsHistory;

    iget-object v5, v0, Lcom/android/settingslib/net/ChartData;->detailForeground:Landroid/net/NetworkStatsHistory;

    const/4 v6, 0x1

    invoke-direct {p0, p1, v4, v6, v5}, Lcom/android/settingslib/net/ChartDataLoader;->collectHistoryForUid(Landroid/net/NetworkTemplate;IILandroid/net/NetworkStatsHistory;)Landroid/net/NetworkStatsHistory;

    move-result-object v5

    iput-object v5, v0, Lcom/android/settingslib/net/ChartData;->detailForeground:Landroid/net/NetworkStatsHistory;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    if-lez v1, :cond_1

    new-instance v2, Landroid/net/NetworkStatsHistory;

    iget-object v3, v0, Lcom/android/settingslib/net/ChartData;->detailForeground:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v3}, Landroid/net/NetworkStatsHistory;->getBucketDuration()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Landroid/net/NetworkStatsHistory;-><init>(J)V

    iput-object v2, v0, Lcom/android/settingslib/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    iget-object v2, v0, Lcom/android/settingslib/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    iget-object v3, v0, Lcom/android/settingslib/net/ChartData;->detailDefault:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v2, v3}, Landroid/net/NetworkStatsHistory;->recordEntireHistory(Landroid/net/NetworkStatsHistory;)V

    iget-object v2, v0, Lcom/android/settingslib/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    iget-object v3, v0, Lcom/android/settingslib/net/ChartData;->detailForeground:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v2, v3}, Landroid/net/NetworkStatsHistory;->recordEntireHistory(Landroid/net/NetworkStatsHistory;)V

    goto :goto_2

    :cond_1
    new-instance v2, Landroid/net/NetworkStatsHistory;

    const-wide/32 v3, 0x36ee80

    invoke-direct {v2, v3, v4}, Landroid/net/NetworkStatsHistory;-><init>(J)V

    iput-object v2, v0, Lcom/android/settingslib/net/ChartData;->detailDefault:Landroid/net/NetworkStatsHistory;

    new-instance v2, Landroid/net/NetworkStatsHistory;

    invoke-direct {v2, v3, v4}, Landroid/net/NetworkStatsHistory;-><init>(J)V

    iput-object v2, v0, Lcom/android/settingslib/net/ChartData;->detailForeground:Landroid/net/NetworkStatsHistory;

    new-instance v2, Landroid/net/NetworkStatsHistory;

    invoke-direct {v2, v3, v4}, Landroid/net/NetworkStatsHistory;-><init>(J)V

    iput-object v2, v0, Lcom/android/settingslib/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    :cond_2
    :goto_2
    return-object v0
.end method


# virtual methods
.method public loadInBackground()Lcom/android/settingslib/net/ChartData;
    .locals 6

    iget-object v0, p0, Lcom/android/settingslib/net/ChartDataLoader;->mArgs:Landroid/os/Bundle;

    const-string v1, "template"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkTemplate;

    iget-object v1, p0, Lcom/android/settingslib/net/ChartDataLoader;->mArgs:Landroid/os/Bundle;

    const-string v2, "app"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/AppItem;

    iget-object v2, p0, Lcom/android/settingslib/net/ChartDataLoader;->mArgs:Landroid/os/Bundle;

    const-string v3, "fields"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    :try_start_0
    invoke-direct {p0, v0, v1, v2}, Lcom/android/settingslib/net/ChartDataLoader;->loadInBackground(Landroid/net/NetworkTemplate;Lcom/android/settingslib/AppItem;I)Lcom/android/settingslib/net/ChartData;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "problem reading network stats"

    invoke-direct {v4, v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settingslib/net/ChartDataLoader;->loadInBackground()Lcom/android/settingslib/net/ChartData;

    move-result-object v0

    return-object v0
.end method

.method protected onReset()V
    .locals 0

    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onReset()V

    invoke-virtual {p0}, Lcom/android/settingslib/net/ChartDataLoader;->cancelLoad()Z

    return-void
.end method

.method protected onStartLoading()V
    .locals 0

    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onStartLoading()V

    invoke-virtual {p0}, Lcom/android/settingslib/net/ChartDataLoader;->forceLoad()V

    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onStopLoading()V

    invoke-virtual {p0}, Lcom/android/settingslib/net/ChartDataLoader;->cancelLoad()Z

    return-void
.end method
