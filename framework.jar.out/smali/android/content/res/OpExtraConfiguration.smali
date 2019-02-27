.class public Landroid/content/res/OpExtraConfiguration;
.super Ljava/lang/Object;
.source "OpExtraConfiguration.java"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final THEME_OLD_SKIN_CHANGED:I = 0x8000000


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field public mThemeChanged:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "OpExtraConfiguration"

    iput-object v0, p0, Landroid/content/res/OpExtraConfiguration;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/OpExtraConfiguration;->DEBUG:Z

    return-void
.end method

.method public static needNewResources(I)Z
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x8000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public compareTo(Landroid/content/res/OpExtraConfiguration;)I
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Landroid/content/res/OpExtraConfiguration;->mThemeChanged:I

    iget v2, p1, Landroid/content/res/OpExtraConfiguration;->mThemeChanged:I

    sub-int/2addr v1, v2

    return v1
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 1

    move-object v0, p1

    check-cast v0, Landroid/content/res/OpExtraConfiguration;

    invoke-virtual {p0, v0}, Landroid/content/res/OpExtraConfiguration;->compareTo(Landroid/content/res/OpExtraConfiguration;)I

    move-result v0

    return v0
.end method

.method public diff(Landroid/content/res/OpExtraConfiguration;)I
    .locals 3

    const/4 v0, 0x0

    iget v1, p1, Landroid/content/res/OpExtraConfiguration;->mThemeChanged:I

    if-lez v1, :cond_0

    iget v1, p0, Landroid/content/res/OpExtraConfiguration;->mThemeChanged:I

    iget v2, p1, Landroid/content/res/OpExtraConfiguration;->mThemeChanged:I

    if-eq v1, v2, :cond_0

    const/high16 v1, 0x8000000

    or-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Landroid/content/res/OpExtraConfiguration;->mThemeChanged:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/OpExtraConfiguration;->mThemeChanged:I

    return-void
.end method

.method public setTo(Landroid/content/res/OpExtraConfiguration;)V
    .locals 1

    iget v0, p1, Landroid/content/res/OpExtraConfiguration;->mThemeChanged:I

    iput v0, p0, Landroid/content/res/OpExtraConfiguration;->mThemeChanged:I

    return-void
.end method

.method public setToDefaults()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/content/res/OpExtraConfiguration;->mThemeChanged:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mThemeChanged = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/res/OpExtraConfiguration;->mThemeChanged:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateFrom(Landroid/content/res/OpExtraConfiguration;)I
    .locals 3

    const/4 v0, 0x0

    iget v1, p1, Landroid/content/res/OpExtraConfiguration;->mThemeChanged:I

    if-lez v1, :cond_0

    iget v1, p0, Landroid/content/res/OpExtraConfiguration;->mThemeChanged:I

    iget v2, p1, Landroid/content/res/OpExtraConfiguration;->mThemeChanged:I

    if-eq v1, v2, :cond_0

    const/high16 v1, 0x8000000

    or-int/2addr v0, v1

    iget v1, p1, Landroid/content/res/OpExtraConfiguration;->mThemeChanged:I

    iput v1, p0, Landroid/content/res/OpExtraConfiguration;->mThemeChanged:I

    :cond_0
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/content/res/OpExtraConfiguration;->mThemeChanged:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
