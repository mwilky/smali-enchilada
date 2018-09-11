.class public Lcom/android/settingslib/drawer/DashboardCategory;
.super Ljava/lang/Object;
.source "DashboardCategory.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "DashboardCategory"

.field public static final TILE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public key:Ljava/lang/String;

.field private mTiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;"
        }
    .end annotation
.end field

.field public priority:I

.field public title:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    const-string v0, "DashboardCategory"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settingslib/drawer/DashboardCategory;->DEBUG:Z

    .line 197
    new-instance v0, Lcom/android/settingslib/drawer/DashboardCategory$1;

    invoke-direct {v0}, Lcom/android/settingslib/drawer/DashboardCategory$1;-><init>()V

    sput-object v0, Lcom/android/settingslib/drawer/DashboardCategory;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 207
    new-instance v0, Lcom/android/settingslib/drawer/DashboardCategory$2;

    invoke-direct {v0}, Lcom/android/settingslib/drawer/DashboardCategory$2;-><init>()V

    sput-object v0, Lcom/android/settingslib/drawer/DashboardCategory;->TILE_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/drawer/DashboardCategory;->mTiles:Ljava/util/List;

    .line 70
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/drawer/DashboardCategory;->mTiles:Ljava/util/List;

    .line 194
    invoke-virtual {p0, p1}, Lcom/android/settingslib/drawer/DashboardCategory;->readFromParcel(Landroid/os/Parcel;)V

    .line 195
    return-void
.end method

.method constructor <init>(Lcom/android/settingslib/drawer/DashboardCategory;)V
    .locals 3
    .param p1, "in"    # Lcom/android/settingslib/drawer/DashboardCategory;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/drawer/DashboardCategory;->mTiles:Ljava/util/List;

    .line 58
    if-eqz p1, :cond_0

    .line 59
    iget-object v0, p1, Lcom/android/settingslib/drawer/DashboardCategory;->title:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/settingslib/drawer/DashboardCategory;->title:Ljava/lang/CharSequence;

    .line 60
    iget-object v0, p1, Lcom/android/settingslib/drawer/DashboardCategory;->key:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settingslib/drawer/DashboardCategory;->key:Ljava/lang/String;

    .line 61
    iget v0, p1, Lcom/android/settingslib/drawer/DashboardCategory;->priority:I

    iput v0, p0, Lcom/android/settingslib/drawer/DashboardCategory;->priority:I

    .line 62
    iget-object v0, p1, Lcom/android/settingslib/drawer/DashboardCategory;->mTiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/drawer/Tile;

    .line 63
    .local v1, "tile":Lcom/android/settingslib/drawer/Tile;
    iget-object v2, p0, Lcom/android/settingslib/drawer/DashboardCategory;->mTiles:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    .end local v1    # "tile":Lcom/android/settingslib/drawer/Tile;
    goto :goto_0

    .line 66
    :cond_0
    return-void
.end method

.method static synthetic lambda$sortTiles$0(Ljava/lang/String;Lcom/android/settingslib/drawer/Tile;Lcom/android/settingslib/drawer/Tile;)I
    .locals 5
    .param p0, "skipPackageName"    # Ljava/lang/String;
    .param p1, "tile1"    # Lcom/android/settingslib/drawer/Tile;
    .param p2, "tile2"    # Lcom/android/settingslib/drawer/Tile;

    .line 139
    iget-object v0, p1, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "package1":Ljava/lang/String;
    iget-object v1, p2, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, "package2":Ljava/lang/String;
    sget-object v2, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-interface {v2, v0, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 143
    .local v2, "packageCompare":I
    iget v3, p2, Lcom/android/settingslib/drawer/Tile;->priority:I

    iget v4, p1, Lcom/android/settingslib/drawer/Tile;->priority:I

    sub-int/2addr v3, v4

    .line 144
    .local v3, "priorityCompare":I
    if-eqz v3, :cond_0

    .line 145
    return v3

    .line 148
    :cond_0
    if-eqz v2, :cond_2

    .line 149
    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 150
    const/4 v4, -0x1

    return v4

    .line 152
    :cond_1
    invoke-static {v1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 153
    const/4 v4, 0x1

    return v4

    .line 156
    :cond_2
    return v2
.end method


# virtual methods
.method public declared-synchronized addTile(ILcom/android/settingslib/drawer/Tile;)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "tile"    # Lcom/android/settingslib/drawer/Tile;

    monitor-enter p0

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/drawer/DashboardCategory;->mTiles:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    monitor-exit p0

    return-void

    .line 90
    .end local p1    # "n":I
    .end local p2    # "tile":Lcom/android/settingslib/drawer/Tile;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/settingslib/drawer/DashboardCategory;
    throw p1
.end method

.method public declared-synchronized addTile(Lcom/android/settingslib/drawer/Tile;)V
    .locals 1
    .param p1, "tile"    # Lcom/android/settingslib/drawer/Tile;

    monitor-enter p0

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/drawer/DashboardCategory;->mTiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    monitor-exit p0

    return-void

    .line 86
    .end local p1    # "tile":Lcom/android/settingslib/drawer/Tile;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/settingslib/drawer/DashboardCategory;
    throw p1
.end method

.method public declared-synchronized containsComponent(Landroid/content/ComponentName;)Z
    .locals 4
    .param p1, "component"    # Landroid/content/ComponentName;

    monitor-enter p0

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/drawer/DashboardCategory;->mTiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/drawer/Tile;

    .line 112
    .local v1, "tile":Lcom/android/settingslib/drawer/Tile;
    iget-object v2, v1, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 113
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 112
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 114
    sget-boolean v0, Lcom/android/settingslib/drawer/DashboardCategory;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 115
    const-string v0, "DashboardCategory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "category "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settingslib/drawer/DashboardCategory;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "contains component"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    :cond_0
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 119
    .end local v1    # "tile":Lcom/android/settingslib/drawer/Tile;
    :cond_1
    goto :goto_0

    .line 120
    :cond_2
    :try_start_1
    sget-boolean v0, Lcom/android/settingslib/drawer/DashboardCategory;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 121
    const-string v0, "DashboardCategory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "category "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settingslib/drawer/DashboardCategory;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not contain component"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    :cond_3
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 110
    .end local p1    # "component":Landroid/content/ComponentName;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/settingslib/drawer/DashboardCategory;
    throw p1
.end method

.method public describeContents()I
    .locals 1

    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method public getTile(I)Lcom/android/settingslib/drawer/Tile;
    .locals 1
    .param p1, "n"    # I

    .line 107
    iget-object v0, p0, Lcom/android/settingslib/drawer/DashboardCategory;->mTiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/drawer/Tile;

    return-object v0
.end method

.method public declared-synchronized getTiles()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 79
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settingslib/drawer/DashboardCategory;->mTiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 80
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/drawer/Tile;>;"
    iget-object v1, p0, Lcom/android/settingslib/drawer/DashboardCategory;->mTiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/drawer/Tile;

    .line 81
    .local v2, "tile":Lcom/android/settingslib/drawer/Tile;
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    .end local v2    # "tile":Lcom/android/settingslib/drawer/Tile;
    goto :goto_0

    .line 83
    :cond_0
    monitor-exit p0

    return-object v0

    .line 78
    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/drawer/Tile;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/settingslib/drawer/DashboardCategory;
    throw v0
.end method

.method public getTilesCount()I
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/android/settingslib/drawer/DashboardCategory;->mTiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 181
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/settingslib/drawer/DashboardCategory;->title:Ljava/lang/CharSequence;

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/drawer/DashboardCategory;->key:Ljava/lang/String;

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/drawer/DashboardCategory;->priority:I

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 187
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 188
    sget-object v2, Lcom/android/settingslib/drawer/Tile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/drawer/Tile;

    .line 189
    .local v2, "tile":Lcom/android/settingslib/drawer/Tile;
    iget-object v3, p0, Lcom/android/settingslib/drawer/DashboardCategory;->mTiles:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    .end local v2    # "tile":Lcom/android/settingslib/drawer/Tile;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 191
    .end local v1    # "n":I
    :cond_0
    return-void
.end method

.method public declared-synchronized removeTile(I)V
    .locals 1
    .param p1, "n"    # I

    monitor-enter p0

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/drawer/DashboardCategory;->mTiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    monitor-exit p0

    return-void

    .line 98
    .end local p1    # "n":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/settingslib/drawer/DashboardCategory;
    throw p1
.end method

.method public declared-synchronized removeTile(Lcom/android/settingslib/drawer/Tile;)V
    .locals 1
    .param p1, "tile"    # Lcom/android/settingslib/drawer/Tile;

    monitor-enter p0

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/drawer/DashboardCategory;->mTiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    monitor-exit p0

    return-void

    .line 94
    .end local p1    # "tile":Lcom/android/settingslib/drawer/Tile;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/settingslib/drawer/DashboardCategory;
    throw p1
.end method

.method public sortTiles()V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/android/settingslib/drawer/DashboardCategory;->mTiles:Ljava/util/List;

    sget-object v1, Lcom/android/settingslib/drawer/DashboardCategory;->TILE_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 131
    return-void
.end method

.method public declared-synchronized sortTiles(Ljava/lang/String;)V
    .locals 2
    .param p1, "skipPackageName"    # Ljava/lang/String;

    monitor-enter p0

    .line 138
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/drawer/DashboardCategory;->mTiles:Ljava/util/List;

    new-instance v1, Lcom/android/settingslib/drawer/-$$Lambda$DashboardCategory$hMIMtvkEGTs2t-7RyY7SqwVmOgI;

    invoke-direct {v1, p1}, Lcom/android/settingslib/drawer/-$$Lambda$DashboardCategory$hMIMtvkEGTs2t-7RyY7SqwVmOgI;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    monitor-exit p0

    return-void

    .line 137
    .end local p1    # "skipPackageName":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/settingslib/drawer/DashboardCategory;
    throw p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 167
    iget-object v0, p0, Lcom/android/settingslib/drawer/DashboardCategory;->title:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 168
    iget-object v0, p0, Lcom/android/settingslib/drawer/DashboardCategory;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 169
    iget v0, p0, Lcom/android/settingslib/drawer/DashboardCategory;->priority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    iget-object v0, p0, Lcom/android/settingslib/drawer/DashboardCategory;->mTiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 172
    .local v0, "count":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 175
    iget-object v2, p0, Lcom/android/settingslib/drawer/DashboardCategory;->mTiles:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/drawer/Tile;

    .line 176
    .local v2, "tile":Lcom/android/settingslib/drawer/Tile;
    invoke-virtual {v2, p1, p2}, Lcom/android/settingslib/drawer/Tile;->writeToParcel(Landroid/os/Parcel;I)V

    .line 174
    .end local v2    # "tile":Lcom/android/settingslib/drawer/Tile;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 178
    .end local v1    # "n":I
    :cond_0
    return-void
.end method
