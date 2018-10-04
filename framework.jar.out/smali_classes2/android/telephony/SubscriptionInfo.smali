.class public Landroid/telephony/SubscriptionInfo;
.super Ljava/lang/Object;
.source "SubscriptionInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final TEXT_SIZE:I = 0x10


# instance fields
.field private mAccessRules:[Landroid/telephony/UiccAccessRule;

.field private mCardId:Ljava/lang/String;

.field private mCarrierName:Ljava/lang/CharSequence;

.field private mCountryIso:Ljava/lang/String;

.field private mDataRoaming:I

.field private mDisplayName:Ljava/lang/CharSequence;

.field private mIccId:Ljava/lang/String;

.field private mIconBitmap:Landroid/graphics/Bitmap;

.field private mIconTint:I

.field private mId:I

.field private mIsEmbedded:Z

.field private mMcc:I

.field private mMnc:I

.field private mNameSource:I

.field private mNumber:Ljava/lang/String;

.field private mSimSlotIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/SubscriptionInfo$1;

    invoke-direct {v0}, Landroid/telephony/SubscriptionInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/SubscriptionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;IILjava/lang/String;ILandroid/graphics/Bitmap;IILjava/lang/String;)V
    .locals 17

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move-object/from16 v13, p13

    invoke-direct/range {v0 .. v16}, Landroid/telephony/SubscriptionInfo;-><init>(ILjava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;IILjava/lang/String;ILandroid/graphics/Bitmap;IILjava/lang/String;Z[Landroid/telephony/UiccAccessRule;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;IILjava/lang/String;ILandroid/graphics/Bitmap;IILjava/lang/String;Z[Landroid/telephony/UiccAccessRule;)V
    .locals 17

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move-object/from16 v13, p13

    move/from16 v14, p14

    move-object/from16 v15, p15

    invoke-direct/range {v0 .. v16}, Landroid/telephony/SubscriptionInfo;-><init>(ILjava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;IILjava/lang/String;ILandroid/graphics/Bitmap;IILjava/lang/String;Z[Landroid/telephony/UiccAccessRule;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;IILjava/lang/String;ILandroid/graphics/Bitmap;IILjava/lang/String;Z[Landroid/telephony/UiccAccessRule;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move/from16 v1, p1

    iput v1, v0, Landroid/telephony/SubscriptionInfo;->mId:I

    move-object/from16 v2, p2

    iput-object v2, v0, Landroid/telephony/SubscriptionInfo;->mIccId:Ljava/lang/String;

    move/from16 v3, p3

    iput v3, v0, Landroid/telephony/SubscriptionInfo;->mSimSlotIndex:I

    move-object/from16 v4, p4

    iput-object v4, v0, Landroid/telephony/SubscriptionInfo;->mDisplayName:Ljava/lang/CharSequence;

    move-object/from16 v5, p5

    iput-object v5, v0, Landroid/telephony/SubscriptionInfo;->mCarrierName:Ljava/lang/CharSequence;

    move/from16 v6, p6

    iput v6, v0, Landroid/telephony/SubscriptionInfo;->mNameSource:I

    move/from16 v7, p7

    iput v7, v0, Landroid/telephony/SubscriptionInfo;->mIconTint:I

    move-object/from16 v8, p8

    iput-object v8, v0, Landroid/telephony/SubscriptionInfo;->mNumber:Ljava/lang/String;

    move/from16 v9, p9

    iput v9, v0, Landroid/telephony/SubscriptionInfo;->mDataRoaming:I

    move-object/from16 v10, p10

    iput-object v10, v0, Landroid/telephony/SubscriptionInfo;->mIconBitmap:Landroid/graphics/Bitmap;

    move/from16 v11, p11

    iput v11, v0, Landroid/telephony/SubscriptionInfo;->mMcc:I

    move/from16 v12, p12

    iput v12, v0, Landroid/telephony/SubscriptionInfo;->mMnc:I

    move-object/from16 v13, p13

    iput-object v13, v0, Landroid/telephony/SubscriptionInfo;->mCountryIso:Ljava/lang/String;

    move/from16 v14, p14

    iput-boolean v14, v0, Landroid/telephony/SubscriptionInfo;->mIsEmbedded:Z

    move-object/from16 v15, p15

    iput-object v15, v0, Landroid/telephony/SubscriptionInfo;->mAccessRules:[Landroid/telephony/UiccAccessRule;

    move-object/from16 v1, p16

    iput-object v1, v0, Landroid/telephony/SubscriptionInfo;->mCardId:Ljava/lang/String;

    return-void
.end method

.method public static givePrintableIccid(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x9

    if-le v1, v2, :cond_0

    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method public canManageSubscription(Landroid/content/Context;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/telephony/SubscriptionInfo;->canManageSubscription(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public canManageSubscription(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/telephony/SubscriptionInfo;->mAccessRules:[Landroid/telephony/UiccAccessRule;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v2, 0x40

    :try_start_0
    invoke-virtual {v0, p2, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    iget-object v3, p0, Landroid/telephony/SubscriptionInfo;->mAccessRules:[Landroid/telephony/UiccAccessRule;

    array-length v4, v3

    move v5, v1

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    invoke-virtual {v6, v2}, Landroid/telephony/UiccAccessRule;->getCarrierPrivilegeStatus(Landroid/content/pm/PackageInfo;)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    return v8

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    return v1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not an embedded subscription"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createIconBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 11

    iget-object v0, p0, Landroid/telephony/SubscriptionInfo;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Landroid/telephony/SubscriptionInfo;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/SubscriptionInfo;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-static {v2, v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    new-instance v6, Landroid/graphics/PorterDuffColorFilter;

    iget v7, p0, Landroid/telephony/SubscriptionInfo;->mIconTint:I

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v6, p0, Landroid/telephony/SubscriptionInfo;->mIconBitmap:Landroid/graphics/Bitmap;

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7, v7, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const-string/jumbo v7, "sans-serif"

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/4 v7, -0x1

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setColor(I)V

    iget v7, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v9, 0x41800000    # 16.0f

    mul-float/2addr v9, v7

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    const-string v7, "%d"

    new-array v9, v6, [Ljava/lang/Object;

    iget v10, p0, Landroid/telephony/SubscriptionInfo;->mSimSlotIndex:I

    add-int/2addr v10, v6

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v8

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v5, v7, v8, v6, v9}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    int-to-float v6, v0

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v6, v8

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v6, v10

    int-to-float v10, v1

    div-float/2addr v10, v8

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerY()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v10, v8

    invoke-virtual {v4, v7, v6, v10, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-object v3
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAccessRules()Ljava/util/List;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/UiccAccessRule;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/telephony/SubscriptionInfo;->mAccessRules:[Landroid/telephony/UiccAccessRule;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/telephony/SubscriptionInfo;->mAccessRules:[Landroid/telephony/UiccAccessRule;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not an embedded subscription"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCardId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/SubscriptionInfo;->mCardId:Ljava/lang/String;

    return-object v0
.end method

.method public getCarrierName()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/telephony/SubscriptionInfo;->mCarrierName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getCountryIso()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/SubscriptionInfo;->mCountryIso:Ljava/lang/String;

    return-object v0
.end method

.method public getDataRoaming()I
    .locals 1

    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mDataRoaming:I

    return v0
.end method

.method public getDisplayName()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/telephony/SubscriptionInfo;->mDisplayName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getIccId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/SubscriptionInfo;->mIccId:Ljava/lang/String;

    return-object v0
.end method

.method public getIconTint()I
    .locals 1

    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mIconTint:I

    return v0
.end method

.method public getMcc()I
    .locals 1

    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mMcc:I

    return v0
.end method

.method public getMnc()I
    .locals 1

    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mMnc:I

    return v0
.end method

.method public getNameSource()I
    .locals 1

    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mNameSource:I

    return v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/SubscriptionInfo;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getSimSlotIndex()I
    .locals 1

    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mSimSlotIndex:I

    return v0
.end method

.method public getSubscriptionId()I
    .locals 1

    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mId:I

    return v0
.end method

.method public isEmbedded()Z
    .locals 1

    iget-boolean v0, p0, Landroid/telephony/SubscriptionInfo;->mIsEmbedded:Z

    return v0
.end method

.method public setCarrierName(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/SubscriptionInfo;->mCarrierName:Ljava/lang/CharSequence;

    return-void
.end method

.method public setDisplayName(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/SubscriptionInfo;->mDisplayName:Ljava/lang/CharSequence;

    return-void
.end method

.method public setIconTint(I)V
    .locals 0

    iput p1, p0, Landroid/telephony/SubscriptionInfo;->mIconTint:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Landroid/telephony/SubscriptionInfo;->mIccId:Ljava/lang/String;

    invoke-static {v0}, Landroid/telephony/SubscriptionInfo;->givePrintableIccid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/SubscriptionInfo;->mCardId:Ljava/lang/String;

    invoke-static {v1}, Landroid/telephony/SubscriptionInfo;->givePrintableIccid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "{id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/telephony/SubscriptionInfo;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", iccId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " simSlotIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/telephony/SubscriptionInfo;->mSimSlotIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " displayName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/telephony/SubscriptionInfo;->mDisplayName:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " carrierName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/telephony/SubscriptionInfo;->mCarrierName:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " nameSource="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/telephony/SubscriptionInfo;->mNameSource:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " iconTint="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/telephony/SubscriptionInfo;->mIconTint:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " dataRoaming="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/telephony/SubscriptionInfo;->mDataRoaming:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " iconBitmap="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/telephony/SubscriptionInfo;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " mcc "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/telephony/SubscriptionInfo;->mMcc:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mnc "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/telephony/SubscriptionInfo;->mMnc:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " isEmbedded "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Landroid/telephony/SubscriptionInfo;->mIsEmbedded:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " accessRules "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/telephony/SubscriptionInfo;->mAccessRules:[Landroid/telephony/UiccAccessRule;

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " cardId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/SubscriptionInfo;->mIccId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mSimSlotIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/SubscriptionInfo;->mDisplayName:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/telephony/SubscriptionInfo;->mCarrierName:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mNameSource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mIconTint:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/SubscriptionInfo;->mNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mDataRoaming:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mMcc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/SubscriptionInfo;->mMnc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/SubscriptionInfo;->mCountryIso:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telephony/SubscriptionInfo;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    iget-boolean v0, p0, Landroid/telephony/SubscriptionInfo;->mIsEmbedded:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Landroid/telephony/SubscriptionInfo;->mAccessRules:[Landroid/telephony/UiccAccessRule;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/telephony/SubscriptionInfo;->mCardId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
