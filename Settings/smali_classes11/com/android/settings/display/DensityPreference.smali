.class public Lcom/android/settings/display/DensityPreference;
.super Lcom/android/settingslib/CustomEditTextPreference;
.source "DensityPreference.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DensityPreference"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/CustomEditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method private getCurrentSwDp()I
    .locals 5

    .line 53
    invoke-virtual {p0}, Lcom/android/settings/display/DensityPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 54
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 55
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    .line 56
    .local v2, "density":F
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 57
    .local v3, "minDimensionPx":I
    int-to-float v4, v3

    div-float/2addr v4, v2

    float-to-int v4, v4

    return v4
.end method


# virtual methods
.method public onAttached()V
    .locals 4

    .line 46
    invoke-super {p0}, Lcom/android/settingslib/CustomEditTextPreference;->onAttached()V

    .line 47
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    .line 48
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/settings/display/DensityPreference;->getCurrentSwDp()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "dpValue":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/settings/display/DensityPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const v3, 0x7f120535

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/display/DensityPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 50
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 62
    invoke-super {p0, p1}, Lcom/android/settingslib/CustomEditTextPreference;->onBindDialogView(Landroid/view/View;)V

    .line 64
    const v0, 0x1020003

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 66
    .local v0, "editText":Landroid/widget/EditText;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 67
    .local v1, "etParam":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-virtual {v1, v3, v2, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 68
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    if-eqz v0, :cond_0

    .line 71
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/settings/display/DensityPreference;->getCurrentSwDp()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 73
    invoke-static {v0}, Lcom/android/settings/Utils;->setEditTextCursorPosition(Landroid/widget/EditText;)V

    .line 75
    :cond_0
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 7
    .param p1, "positiveResult"    # Z

    .line 79
    if-eqz p1, :cond_0

    .line 81
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/display/DensityPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 82
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 83
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/android/settings/display/DensityPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x140

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 84
    .local v2, "newSwDp":I
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 85
    .local v3, "minDimensionPx":I
    const/16 v4, 0xa0

    mul-int/2addr v4, v3

    div-int/2addr v4, v2

    .line 86
    .local v4, "newDensity":I
    const/16 v5, 0x78

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 87
    .local v5, "densityDpi":I
    const/4 v6, 0x0

    invoke-static {v6, v5}, Lcom/android/settingslib/display/DisplayDensityUtils;->setForcedDisplayDensity(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .end local v0    # "res":Landroid/content/res/Resources;
    .end local v1    # "metrics":Landroid/util/DisplayMetrics;
    .end local v2    # "newSwDp":I
    .end local v3    # "minDimensionPx":I
    .end local v4    # "newDensity":I
    .end local v5    # "densityDpi":I
    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DensityPreference"

    const-string v2, "Couldn\'t save density"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method
