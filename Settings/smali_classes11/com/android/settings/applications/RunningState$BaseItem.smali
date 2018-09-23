.class Lcom/android/settings/applications/RunningState$BaseItem;
.super Ljava/lang/Object;
.source "RunningState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/RunningState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaseItem"
.end annotation


# instance fields
.field mActiveSince:J

.field mBackground:Z

.field mCurSeq:I

.field mCurSizeStr:Ljava/lang/String;

.field mDescription:Ljava/lang/String;

.field mDisplayLabel:Ljava/lang/CharSequence;

.field final mIsProcess:Z

.field mLabel:Ljava/lang/String;

.field mNeedDivider:Z

.field mPackageInfo:Landroid/content/pm/PackageItemInfo;

.field mSize:J

.field mSizeStr:Ljava/lang/String;

.field final mUserId:I


# direct methods
.method public constructor <init>(ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mIsProcess:Z

    iput p2, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mUserId:I

    return-void
.end method


# virtual methods
.method public loadIcon(Landroid/content/Context;Lcom/android/settings/applications/RunningState;)Landroid/graphics/drawable/Drawable;
    .locals 4

    iget-object v0, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    iget-object v1, p2, Lcom/android/settings/applications/RunningState;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageItemInfo;->loadUnbadgedIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p2, Lcom/android/settings/applications/RunningState;->mPm:Landroid/content/pm/PackageManager;

    new-instance v2, Landroid/os/UserHandle;

    iget v3, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mUserId:I

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
