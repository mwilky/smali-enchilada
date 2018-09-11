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
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "session"    # Landroid/net/INetworkStatsSession;
    .param p3, "args"    # Landroid/os/Bundle;

    .line 61
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 62
    iput-object p2, p0, Lcom/android/settingslib/net/ChartDataLoader;->mSession:Landroid/net/INetworkStatsSession;

    .line 63
    iput-object p3, p0, Lcom/android/settingslib/net/ChartDataLoader;->mArgs:Landroid/os/Bundle;

    .line 64
    return-void
.end method

.method public static buildArgs(Landroid/net/NetworkTemplate;Lcom/android/settingslib/AppItem;)Landroid/os/Bundle;
    .locals 1
    .param p0, "template"    # Landroid/net/NetworkTemplate;
    .param p1, "app"    # Lcom/android/settingslib/AppItem;

    .line 49
    const/16 v0, 0xa

    invoke-static {p0, p1, v0}, Lcom/android/settingslib/net/ChartDataLoader;->buildArgs(Landroid/net/NetworkTemplate;Lcom/android/settingslib/AppItem;I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static buildArgs(Landroid/net/NetworkTemplate;Lcom/android/settingslib/AppItem;I)Landroid/os/Bundle;
    .locals 2
    .param p0, "template"    # Landroid/net/NetworkTemplate;
    .param p1, "app"    # Lcom/android/settingslib/AppItem;
    .param p2, "fields"    # I

    .line 53
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 54
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "template"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 55
    const-string v1, "app"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 56
    const-string v1, "fields"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 57
    return-object v0
.end method

.method private collectHistoryForUid(Landroid/net/NetworkTemplate;IILandroid/net/NetworkStatsHistory;)Landroid/net/NetworkStatsHistory;
    .locals 6
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "existing"    # Landroid/net/NetworkStatsHistory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/android/settingslib/net/ChartDataLoader;->mSession:Landroid/net/INetworkStatsSession;

    const/4 v4, 0x0

    const/16 v5, 0xa

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Landroid/net/INetworkStatsSession;->getHistoryForUid(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    .line 146
    .local v0, "history":Landroid/net/NetworkStatsHistory;
    if-eqz p4, :cond_0

    .line 147
    invoke-virtual {p4, v0}, Landroid/net/NetworkStatsHistory;->recordEntireHistory(Landroid/net/NetworkStatsHistory;)V

    .line 148
    return-object p4

    .line 150
    :cond_0
    return-object v0
.end method

.method private loadInBackground(Landroid/net/NetworkTemplate;Lcom/android/settingslib/AppItem;I)Lcom/android/settingslib/net/ChartData;
    .locals 7
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "app"    # Lcom/android/settingslib/AppItem;
    .param p3, "fields"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 89
    new-instance v0, Lcom/android/settingslib/net/ChartData;

    invoke-direct {v0}, Lcom/android/settingslib/net/ChartData;-><init>()V

    .line 92
    .local v0, "data":Lcom/android/settingslib/net/ChartData;
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/net/ChartDataLoader;->mSession:Landroid/net/INetworkStatsSession;

    invoke-interface {v1, p1, p3}, Landroid/net/INetworkStatsSession;->getHistoryForNetwork(Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settingslib/net/ChartData;->network:Landroid/net/NetworkStatsHistory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    goto :goto_0

    .line 93
    :catch_0
    move-exception v1

    .line 94
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "ChartDataLoader"

    const-string v3, "mSession.getHistoryForNetwork error."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 99
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    if-eqz p2, :cond_2

    .line 101
    iget-object v1, p2, Lcom/android/settingslib/AppItem;->uids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    .line 102
    .local v1, "size":I
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_0

    .line 103
    iget-object v4, p2, Lcom/android/settingslib/AppItem;->uids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    .line 104
    .local v4, "uid":I
    iget-object v5, v0, Lcom/android/settingslib/net/ChartData;->detailDefault:Landroid/net/NetworkStatsHistory;

    invoke-direct {p0, p1, v4, v2, v5}, Lcom/android/settingslib/net/ChartDataLoader;->collectHistoryForUid(Landroid/net/NetworkTemplate;IILandroid/net/NetworkStatsHistory;)Landroid/net/NetworkStatsHistory;

    move-result-object v5

    iput-object v5, v0, Lcom/android/settingslib/net/ChartData;->detailDefault:Landroid/net/NetworkStatsHistory;

    .line 106
    iget-object v5, v0, Lcom/android/settingslib/net/ChartData;->detailForeground:Landroid/net/NetworkStatsHistory;

    const/4 v6, 0x1

    invoke-direct {p0, p1, v4, v6, v5}, Lcom/android/settingslib/net/ChartDataLoader;->collectHistoryForUid(Landroid/net/NetworkTemplate;IILandroid/net/NetworkStatsHistory;)Landroid/net/NetworkStatsHistory;

    move-result-object v5

    iput-object v5, v0, Lcom/android/settingslib/net/ChartData;->detailForeground:Landroid/net/NetworkStatsHistory;

    .line 102
    .end local v4    # "uid":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 110
    .end local v3    # "i":I
    :cond_0
    if-lez v1, :cond_1

    .line 111
    new-instance v2, Landroid/net/NetworkStatsHistory;

    iget-object v3, v0, Lcom/android/settingslib/net/ChartData;->detailForeground:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v3}, Landroid/net/NetworkStatsHistory;->getBucketDuration()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Landroid/net/NetworkStatsHistory;-><init>(J)V

    iput-object v2, v0, Lcom/android/settingslib/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    .line 112
    iget-object v2, v0, Lcom/android/settingslib/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    iget-object v3, v0, Lcom/android/settingslib/net/ChartData;->detailDefault:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v2, v3}, Landroid/net/NetworkStatsHistory;->recordEntireHistory(Landroid/net/NetworkStatsHistory;)V

    .line 113
    iget-object v2, v0, Lcom/android/settingslib/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    iget-object v3, v0, Lcom/android/settingslib/net/ChartData;->detailForeground:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v2, v3}, Landroid/net/NetworkStatsHistory;->recordEntireHistory(Landroid/net/NetworkStatsHistory;)V

    goto :goto_2

    .line 115
    :cond_1
    new-instance v2, Landroid/net/NetworkStatsHistory;

    const-wide/32 v3, 0x36ee80

    invoke-direct {v2, v3, v4}, Landroid/net/NetworkStatsHistory;-><init>(J)V

    iput-object v2, v0, Lcom/android/settingslib/net/ChartData;->detailDefault:Landroid/net/NetworkStatsHistory;

    .line 116
    new-instance v2, Landroid/net/NetworkStatsHistory;

    invoke-direct {v2, v3, v4}, Landroid/net/NetworkStatsHistory;-><init>(J)V

    iput-object v2, v0, Lcom/android/settingslib/net/ChartData;->detailForeground:Landroid/net/NetworkStatsHistory;

    .line 117
    new-instance v2, Landroid/net/NetworkStatsHistory;

    invoke-direct {v2, v3, v4}, Landroid/net/NetworkStatsHistory;-><init>(J)V

    iput-object v2, v0, Lcom/android/settingslib/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    .line 121
    .end local v1    # "size":I
    :cond_2
    :goto_2
    return-object v0
.end method


# virtual methods
.method public loadInBackground()Lcom/android/settingslib/net/ChartData;
    .locals 6

    .line 74
    iget-object v0, p0, Lcom/android/settingslib/net/ChartDataLoader;->mArgs:Landroid/os/Bundle;

    const-string v1, "template"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkTemplate;

    .line 75
    .local v0, "template":Landroid/net/NetworkTemplate;
    iget-object v1, p0, Lcom/android/settingslib/net/ChartDataLoader;->mArgs:Landroid/os/Bundle;

    const-string v2, "app"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/AppItem;

    .line 76
    .local v1, "app":Lcom/android/settingslib/AppItem;
    iget-object v2, p0, Lcom/android/settingslib/net/ChartDataLoader;->mArgs:Landroid/os/Bundle;

    const-string v3, "fields"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 79
    .local v2, "fields":I
    :try_start_0
    invoke-direct {p0, v0, v1, v2}, Lcom/android/settingslib/net/ChartDataLoader;->loadInBackground(Landroid/net/NetworkTemplate;Lcom/android/settingslib/AppItem;I)Lcom/android/settingslib/net/ChartData;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 80
    :catch_0
    move-exception v3

    .line 83
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "problem reading network stats"

    invoke-direct {v4, v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lcom/android/settingslib/net/ChartDataLoader;->loadInBackground()Lcom/android/settingslib/net/ChartData;

    move-result-object v0

    return-object v0
.end method

.method protected onReset()V
    .locals 0

    .line 132
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onReset()V

    .line 133
    invoke-virtual {p0}, Lcom/android/settingslib/net/ChartDataLoader;->cancelLoad()Z

    .line 134
    return-void
.end method

.method protected onStartLoading()V
    .locals 0

    .line 68
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onStartLoading()V

    .line 69
    invoke-virtual {p0}, Lcom/android/settingslib/net/ChartDataLoader;->forceLoad()V

    .line 70
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .line 126
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onStopLoading()V

    .line 127
    invoke-virtual {p0}, Lcom/android/settingslib/net/ChartDataLoader;->cancelLoad()Z

    .line 128
    return-void
.end method
