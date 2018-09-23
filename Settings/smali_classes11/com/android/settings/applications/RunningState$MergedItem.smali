.class Lcom/android/settings/applications/RunningState$MergedItem;
.super Lcom/android/settings/applications/RunningState$BaseItem;
.source "RunningState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/RunningState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MergedItem"
.end annotation


# instance fields
.field final mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLastNumProcesses:I

.field private mLastNumServices:I

.field final mOtherProcesses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

.field final mServices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/RunningState$ServiceItem;",
            ">;"
        }
    .end annotation
.end field

.field mUser:Lcom/android/settings/applications/RunningState$UserState;


# direct methods
.method constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/settings/applications/RunningState$BaseItem;-><init>(ZI)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mLastNumProcesses:I

    iput v0, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mLastNumServices:I

    return-void
.end method

.method private setDescription(Landroid/content/Context;II)V
    .locals 6

    iget v0, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mLastNumProcesses:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mLastNumServices:I

    if-eq v0, p3, :cond_4

    :cond_0
    iput p2, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mLastNumProcesses:I

    iput p3, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mLastNumServices:I

    const v0, 0x7f120f03

    const/4 v1, 0x1

    if-eq p2, v1, :cond_2

    if-eq p3, v1, :cond_1

    const v2, 0x7f120f00

    goto :goto_0

    :cond_1
    const v2, 0x7f120f01

    :goto_0
    move v0, v2

    goto :goto_1

    :cond_2
    if-eq p3, v1, :cond_3

    const v0, 0x7f120f02

    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {v2, v0, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mDescription:Ljava/lang/String;

    :cond_4
    return-void
.end method


# virtual methods
.method public loadIcon(Landroid/content/Context;Lcom/android/settings/applications/RunningState;)Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mUser:Lcom/android/settings/applications/RunningState$UserState;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/android/settings/applications/RunningState$BaseItem;->loadIcon(Landroid/content/Context;Lcom/android/settings/applications/RunningState;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mUser:Lcom/android/settings/applications/RunningState$UserState;

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$UserState;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mUser:Lcom/android/settings/applications/RunningState$UserState;

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$UserState;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mUser:Lcom/android/settings/applications/RunningState$UserState;

    iget-object v1, v1, Lcom/android/settings/applications/RunningState$UserState;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v1

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    :cond_2
    const v0, 0x1080460

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method update(Landroid/content/Context;Z)Z
    .locals 12

    iput-boolean p2, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mBackground:Z

    iget-object v0, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mUser:Lcom/android/settings/applications/RunningState$UserState;

    const-wide/16 v1, 0x0

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/RunningState$MergedItem;

    iget-object v6, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v6, v6, Lcom/android/settings/applications/RunningState$ProcessItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    iput-object v6, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    iget-object v6, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mUser:Lcom/android/settings/applications/RunningState$UserState;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mUser:Lcom/android/settings/applications/RunningState$UserState;

    iget-object v6, v6, Lcom/android/settings/applications/RunningState$UserState;->mLabel:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    iput-object v6, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mLabel:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mLabel:Ljava/lang/String;

    iput-object v6, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mDisplayLabel:Ljava/lang/CharSequence;

    const/4 v6, 0x0

    const/4 v7, 0x0

    iput-wide v3, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mActiveSince:J

    move v3, v5

    :goto_1
    iget-object v4, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/applications/RunningState$MergedItem;

    iget v8, v4, Lcom/android/settings/applications/RunningState$MergedItem;->mLastNumProcesses:I

    add-int/2addr v6, v8

    iget v8, v4, Lcom/android/settings/applications/RunningState$MergedItem;->mLastNumServices:I

    add-int/2addr v7, v8

    iget-wide v8, v4, Lcom/android/settings/applications/RunningState$MergedItem;->mActiveSince:J

    cmp-long v8, v8, v1

    if-ltz v8, :cond_1

    iget-wide v8, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mActiveSince:J

    iget-wide v10, v4, Lcom/android/settings/applications/RunningState$MergedItem;->mActiveSince:J

    cmp-long v8, v8, v10

    if-gez v8, :cond_1

    iget-wide v8, v4, Lcom/android/settings/applications/RunningState$MergedItem;->mActiveSince:J

    iput-wide v8, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mActiveSince:J

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iget-boolean v1, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mBackground:Z

    if-nez v1, :cond_3

    invoke-direct {p0, p1, v6, v7}, Lcom/android/settings/applications/RunningState$MergedItem;->setDescription(Landroid/content/Context;II)V

    :cond_3
    goto :goto_4

    :cond_4
    iget-object v0, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    iput-object v0, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    iget-object v0, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mDisplayLabel:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mDisplayLabel:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mLabel:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mLabel:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mBackground:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    if-lez v0, :cond_5

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    move v0, v5

    :goto_2
    iget-object v6, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/2addr v0, v6

    iget-object v6, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-direct {p0, p1, v0, v6}, Lcom/android/settings/applications/RunningState$MergedItem;->setDescription(Landroid/content/Context;II)V

    :cond_6
    iput-wide v3, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mActiveSince:J

    move v0, v5

    :goto_3
    iget-object v3, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_8

    iget-object v3, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/applications/RunningState$ServiceItem;

    iget-wide v6, v3, Lcom/android/settings/applications/RunningState$ServiceItem;->mActiveSince:J

    cmp-long v4, v6, v1

    if-ltz v4, :cond_7

    iget-wide v6, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mActiveSince:J

    iget-wide v8, v3, Lcom/android/settings/applications/RunningState$ServiceItem;->mActiveSince:J

    cmp-long v4, v6, v8

    if-gez v4, :cond_7

    iget-wide v6, v3, Lcom/android/settings/applications/RunningState$ServiceItem;->mActiveSince:J

    iput-wide v6, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mActiveSince:J

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_8
    :goto_4
    return v5
.end method

.method updateSize(Landroid/content/Context;)Z
    .locals 7

    iget-object v0, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mUser:Lcom/android/settings/applications/RunningState$UserState;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mSize:J

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/RunningState$MergedItem;

    invoke-virtual {v2, p1}, Lcom/android/settings/applications/RunningState$MergedItem;->updateSize(Landroid/content/Context;)Z

    iget-wide v3, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mSize:J

    iget-wide v5, v2, Lcom/android/settings/applications/RunningState$MergedItem;->mSize:J

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mSize:J

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-wide v2, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mSize:J

    iput-wide v2, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mSize:J

    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-wide v2, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mSize:J

    iget-object v4, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-wide v4, v4, Lcom/android/settings/applications/RunningState$ProcessItem;->mSize:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mSize:J

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-wide v2, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mSize:J

    invoke-static {p1, v2, v3}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mSizeStr:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iput-object v0, p0, Lcom/android/settings/applications/RunningState$MergedItem;->mSizeStr:Ljava/lang/String;

    return v1

    :cond_2
    return v1
.end method
