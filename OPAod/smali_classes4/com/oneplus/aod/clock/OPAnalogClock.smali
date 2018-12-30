.class public Lcom/oneplus/aod/clock/OPAnalogClock;
.super Landroid/widget/RelativeLayout;
.source "OPAnalogClock.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mHour:Landroid/widget/ImageView;

.field private mMin:Landroid/widget/ImageView;

.field private mBackground:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "OPAnalogClock"

    iput-object v0, p0, Lcom/oneplus/aod/clock/OPAnalogClock;->TAG:Ljava/lang/String;

    invoke-direct {p0}, Lcom/oneplus/aod/clock/OPAnalogClock;->init()V
    
    iput-object p1, p0, Lcom/oneplus/aod/clock/OPAnalogClock;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "OPAnalogClock"

    iput-object v0, p0, Lcom/oneplus/aod/clock/OPAnalogClock;->TAG:Ljava/lang/String;

    invoke-direct {p0}, Lcom/oneplus/aod/clock/OPAnalogClock;->init()V
    
    iput-object p1, p0, Lcom/oneplus/aod/clock/OPAnalogClock;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v0, "OPAnalogClock"

    iput-object v0, p0, Lcom/oneplus/aod/clock/OPAnalogClock;->TAG:Ljava/lang/String;

    invoke-direct {p0}, Lcom/oneplus/aod/clock/OPAnalogClock;->init()V
	
	iput-object p1, p0, Lcom/oneplus/aod/clock/OPAnalogClock;->mContext:Landroid/content/Context;
	
    return-void
.end method

.method private init()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/aod/clock/OPAnalogClock;->TAG:Ljava/lang/String;

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/oneplus/aod/clock/OPAnalogClock;->refreshTime()V
    
    invoke-virtual {p0}, Lcom/oneplus/aod/clock/OPAnalogClock;->updateClockColors()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f09002a

    invoke-virtual {p0, v0}, Lcom/oneplus/aod/clock/OPAnalogClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/aod/clock/OPAnalogClock;->mHour:Landroid/widget/ImageView;

    const v0, 0x7f09002b

    invoke-virtual {p0, v0}, Lcom/oneplus/aod/clock/OPAnalogClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/aod/clock/OPAnalogClock;->mMin:Landroid/widget/ImageView;
    
    const v0, 0x7f090027

    invoke-virtual {p0, v0}, Lcom/oneplus/aod/clock/OPAnalogClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/aod/clock/OPAnalogClock;->mBackground:Landroid/widget/ImageView;

    return-void
.end method

.method public refreshTime()V
    .locals 8

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "hh:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/aod/clock/OPAnalogClock;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refreshTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iget-object v5, p0, Lcom/oneplus/aod/clock/OPAnalogClock;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hour = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", min = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/oneplus/aod/clock/OPAnalogClock;->mHour:Landroid/widget/ImageView;

    const v6, 0x7f07005f

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v5, p0, Lcom/oneplus/aod/clock/OPAnalogClock;->mMin:Landroid/widget/ImageView;

    const v6, 0x7f070060

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    const/16 v5, 0x168

    mul-int v6, v5, v3

    div-int/lit8 v6, v6, 0xc

    const/16 v7, 0x1e

    mul-int/2addr v7, v4

    div-int/lit8 v7, v7, 0x3c

    add-int/2addr v6, v7

    int-to-float v6, v6

    mul-int/2addr v5, v4

    div-int/lit8 v5, v5, 0x3c

    int-to-float v5, v5

    iget-object v7, p0, Lcom/oneplus/aod/clock/OPAnalogClock;->mHour:Landroid/widget/ImageView;

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setRotation(F)V

    iget-object v7, p0, Lcom/oneplus/aod/clock/OPAnalogClock;->mMin:Landroid/widget/ImageView;

    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setRotation(F)V

    return-void
.end method

.method public static getAccentColor(Landroid/content/Context;)I
    .registers 11
    .param p0, "Context"    # Landroid/content/Context;

    .line 323
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 324
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "oem_black_mode_accent_color"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 325
    .local v1, "HexColorBlack":Ljava/lang/String;
    const-string v2, "oem_white_mode_accent_color"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 326
    .local v2, "HexColorWhite":Ljava/lang/String;
    const-string v3, "oem_black_mode"

    const/4 v4, 0x2

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 327
    .local v3, "theme":I
    const-string v5, "oem_special_theme"

    const/4 v6, 0x0

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 328
    .local v5, "specialTheme":I
    const/4 v6, 0x1

    if-ne v5, v6, :cond_25

    .line 329
    const v4, -0x43fd3

    return v4

    .line 330
    :cond_25
    const/16 v7, 0x10

    const/16 v8, 0xb

    if-ne v3, v6, :cond_42

    .line 331
    const-string v9, "oem_black_mode_accent_color_index"

    invoke-static {v0, v9, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v8, :cond_38

    .line 332
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    return v4

    .line 334
    :cond_38
    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 335
    invoke-static {v1, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v6

    long-to-int v4, v6

    return v4

    .line 337
    :cond_42
    if-nez v3, :cond_5b

    .line 338
    const-string v9, "oem_white_mode_accent_color_index"

    invoke-static {v0, v9, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v8, :cond_51

    .line 339
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    return v4

    .line 341
    :cond_51
    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 342
    invoke-static {v2, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v6

    long-to-int v4, v6

    return v4

    .line 344
    :cond_5b
    const/4 v6, -0x1

    if-ne v3, v4, :cond_5f

    .line 345
    return v6

    .line 347
    :cond_5f
    return v6
.end method

.method public updateClockColors()V
    .registers 13

    .line 293
    iget-object v0, p0, Lcom/oneplus/aod/clock/OPAnalogClock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 294
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "tweaks_aod_transparent_background"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 295
    .local v1, "isTransBackground":I
    const-string v3, "tweaks_unlock_aod_colors"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 296
    .local v3, "isCustomClock":I
    const-string v4, "tweaks_unlock_aod_accent_colors"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 297
    .local v4, "isCustomClockAccent":I
    const-string v5, "tweaks_aod_text_color_system_accent"

    invoke-static {v0, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 298
    .local v5, "isCustomClockSystemAccent":I
    const-string v6, "tweaks_aod_accent_text_color_system_accent"

    invoke-static {v0, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 299
    .local v2, "isCustomClockAccentSystemAccent":I
    const-string v6, "tweaks_aod_text_color"

    iget-object v7, p0, Lcom/oneplus/aod/clock/OPAnalogClock;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0500b8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-static {v0, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 300
    .local v6, "minColor":I
    const-string v7, "tweaks_aod_accent_text_color"

    iget-object v8, p0, Lcom/oneplus/aod/clock/OPAnalogClock;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0500b7

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-static {v0, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 301
    .local v7, "hourColor":I
    iget-object v8, p0, Lcom/oneplus/aod/clock/OPAnalogClock;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/oneplus/aod/clock/OPAnalogClock;->getAccentColor(Landroid/content/Context;)I

    move-result v8

    .line 302
    .local v8, "accentColor":I
    const/4 v9, 0x1

    if-ne v3, v9, :cond_66

    .line 303
    if-ne v5, v9, :cond_5e

    .line 304
    iget-object v10, p0, Lcom/oneplus/aod/clock/OPAnalogClock;->mMin:Landroid/widget/ImageView;

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v10, v8, v11}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_67

    .line 306
    :cond_5e
    iget-object v10, p0, Lcom/oneplus/aod/clock/OPAnalogClock;->mMin:Landroid/widget/ImageView;

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v10, v6, v11}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_67

    .line 302
    :cond_66
    nop

    .line 309
    :goto_67
    if-nez v3, :cond_6f

    .line 310
    iget-object v10, p0, Lcom/oneplus/aod/clock/OPAnalogClock;->mMin:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->clearColorFilter()V

    goto :goto_70

    .line 309
    :cond_6f
    nop

    .line 312
    :goto_70
    if-ne v4, v9, :cond_84

    .line 313
    if-ne v2, v9, :cond_7c

    .line 314
    iget-object v10, p0, Lcom/oneplus/aod/clock/OPAnalogClock;->mHour:Landroid/widget/ImageView;

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v10, v8, v11}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_85

    .line 316
    :cond_7c
    iget-object v10, p0, Lcom/oneplus/aod/clock/OPAnalogClock;->mHour:Landroid/widget/ImageView;

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v10, v7, v11}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_85

    .line 312
    :cond_84
    nop

    .line 319
    :goto_85
    if-nez v4, :cond_8d

    .line 320
    iget-object v10, p0, Lcom/oneplus/aod/clock/OPAnalogClock;->mHour:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->clearColorFilter()V

    goto :goto_8e

    .line 319
    :cond_8d
    nop

    .line 322
    :goto_8e
    if-ne v1, v9, :cond_a3

    .line 323
    iget-object v9, p0, Lcom/oneplus/aod/clock/OPAnalogClock;->mBackground:Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/oneplus/aod/clock/OPAnalogClock;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0701f6

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_b5

    .line 325
    :cond_a3
    iget-object v9, p0, Lcom/oneplus/aod/clock/OPAnalogClock;->mBackground:Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/oneplus/aod/clock/OPAnalogClock;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f07005d

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 327
    :goto_b5
    return-void
.end method
