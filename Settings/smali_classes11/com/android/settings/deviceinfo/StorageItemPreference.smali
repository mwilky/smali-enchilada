.class public Lcom/android/settings/deviceinfo/StorageItemPreference;
.super Landroid/support/v7/preference/Preference;
.source "StorageItemPreference.java"


# static fields
.field private static final PROGRESS_MAX:I = 0x64

.field private static final UNINITIALIZED:I = -0x1


# instance fields
.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mProgressPercent:I

.field public userHandle:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/deviceinfo/StorageItemPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->mProgressPercent:I

    .line 45
    const v0, 0x7f0d0254

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setLayoutResource(I)V

    .line 46
    const v0, 0x7f120925

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setSummary(I)V

    .line 47
    return-void
.end method

.method private static getGigabyteSuffix(Landroid/content/res/Resources;)I
    .locals 3
    .param p0, "res"    # Landroid/content/res/Resources;

    .line 80
    const-string v0, "gigabyteShort"

    const-string v1, "string"

    const-string v2, "android"

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 1
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .line 74
    const v0, 0x102000d

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->mProgressBar:Landroid/widget/ProgressBar;

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageItemPreference;->updateProgressBar()V

    .line 76
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 77
    return-void
.end method

.method public setStorageSize(JJ)V
    .locals 6
    .param p1, "size"    # J
    .param p3, "total"    # J

    .line 50
    nop

    .line 52
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageItemPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageItemPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/deviceinfo/StorageItemPreference;->getGigabyteSuffix(Landroid/content/res/Resources;)I

    move-result v3

    .line 51
    const-wide/32 v4, 0x3b9aca00

    move-wide v1, p1

    invoke-static/range {v0 .. v5}, Lcom/android/settings/utils/FileSizeFormatter;->formatFileSize(Landroid/content/Context;JIJ)Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageItemPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 56
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-nez v0, :cond_0

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->mProgressPercent:I

    goto :goto_0

    .line 59
    :cond_0
    const-wide/16 v0, 0x64

    mul-long/2addr v0, p1

    div-long/2addr v0, p3

    long-to-int v0, v0

    iput v0, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->mProgressPercent:I

    .line 61
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageItemPreference;->updateProgressBar()V

    .line 62
    return-void
.end method

.method protected updateProgressBar()V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->mProgressPercent:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 69
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->mProgressBar:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/android/settings/deviceinfo/StorageItemPreference;->mProgressPercent:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 70
    return-void

    .line 66
    :cond_1
    :goto_0
    return-void
.end method
