.class public Lcom/oneplus/settings/ui/OPAlertSliderAnimPreference;
.super Landroid/support/v7/preference/Preference;
.source "OPAlertSliderAnimPreference.java"


# static fields
.field private static final DURATION:I = 0x14

.field private static pFrameRess:[I


# instance fields
.field private ImgeAlertSliderInstructions:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private resid:I

.field private sceneAnimation:Lcom/oneplus/settings/quickpay/SceneAnimation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/oneplus/settings/ui/OPAlertSliderAnimPreference;->pFrameRess:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0d013e

    iput v0, p0, Lcom/oneplus/settings/ui/OPAlertSliderAnimPreference;->resid:I

    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPAlertSliderAnimPreference;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x7f0d013e

    iput v0, p0, Lcom/oneplus/settings/ui/OPAlertSliderAnimPreference;->resid:I

    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPAlertSliderAnimPreference;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const v0, 0x7f0d013e

    iput v0, p0, Lcom/oneplus/settings/ui/OPAlertSliderAnimPreference;->resid:I

    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPAlertSliderAnimPreference;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method public static autoGenericCode(II)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPAlertSliderAnimPreference;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/oneplus/settings/ui/OPAlertSliderAnimPreference;->resid:I

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/OPAlertSliderAnimPreference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a0250

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPAlertSliderAnimPreference;->ImgeAlertSliderInstructions:Landroid/widget/ImageView;

    sget-object v0, Lcom/oneplus/settings/ui/OPAlertSliderAnimPreference;->pFrameRess:[I

    if-nez v0, :cond_4

    const/16 v0, 0xee

    new-array v1, v0, [I

    sput-object v1, Lcom/oneplus/settings/ui/OPAlertSliderAnimPreference;->pFrameRess:[I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x19

    if-ge v2, v3, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/oneplus/settings/ui/OPAlertSliderAnimPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "op_alert_slider_1"

    const-string v5, "drawable"

    iget-object v6, p0, Lcom/oneplus/settings/ui/OPAlertSliderAnimPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    sget-object v4, Lcom/oneplus/settings/ui/OPAlertSliderAnimPreference;->pFrameRess:[I

    aput v3, v4, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    nop

    :goto_2
    move v2, v3

    const/16 v3, 0x3d

    if-ge v2, v3, :cond_1

    :try_start_1
    iget-object v3, p0, Lcom/oneplus/settings/ui/OPAlertSliderAnimPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "op_alert_slider_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v2, -0x17

    const/4 v6, 0x2

    invoke-static {v5, v6}, Lcom/oneplus/settings/ui/OPAlertSliderAnimPreference;->autoGenericCode(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "drawable"

    iget-object v6, p0, Lcom/oneplus/settings/ui/OPAlertSliderAnimPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    sget-object v4, Lcom/oneplus/settings/ui/OPAlertSliderAnimPreference;->pFrameRess:[I

    aput v3, v4, v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    add-int/lit8 v3, v2, 0x1

    goto :goto_2

    :cond_1
    nop

    :goto_4
    move v2, v3

    const/16 v3, 0x83

    if-ge v2, v3, :cond_2

    :try_start_2
    iget-object v3, p0, Lcom/oneplus/settings/ui/OPAlertSliderAnimPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "op_alert_slider_38"

    const-string v5, "drawable"

    iget-object v6, p0, Lcom/oneplus/settings/ui/OPAlertSliderAnimPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    sget-object v4, Lcom/oneplus/settings/ui/OPAlertSliderAnimPreference;->pFrameRess:[I

    aput v3, v4, v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_2
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5
    add-int/lit8 v3, v2, 0x1

    goto :goto_4

    :cond_2
    nop

    :goto_6
    move v2, v3

    const/16 v3, 0xa8

    if-ge v2, v3, :cond_3

    :try_start_3
    sget-object v3, Lcom/oneplus/settings/ui/OPAlertSliderAnimPreference;->pFrameRess:[I

    sget-object v4, Lcom/oneplus/settings/ui/OPAlertSliderAnimPreference;->pFrameRess:[I

    rsub-int v5, v2, 0xc0

    aget v4, v4, v5

    aput v4, v3, v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_7

    :catch_3
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_7
    add-int/lit8 v3, v2, 0x1

    goto :goto_6

    :cond_3
    nop

    :goto_8
    move v2, v3

    if-ge v2, v0, :cond_4

    :try_start_4
    sget-object v3, Lcom/oneplus/settings/ui/OPAlertSliderAnimPreference;->pFrameRess:[I

    sget-object v4, Lcom/oneplus/settings/ui/OPAlertSliderAnimPreference;->pFrameRess:[I

    aget v4, v4, v1

    aput v4, v3, v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_9

    :catch_4
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_9
    add-int/lit8 v3, v2, 0x1

    goto :goto_8

    :cond_4
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPAlertSliderAnimPreference;->sceneAnimation:Lcom/oneplus/settings/quickpay/SceneAnimation;

    if-nez v0, :cond_5

    new-instance v0, Lcom/oneplus/settings/quickpay/SceneAnimation;

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPAlertSliderAnimPreference;->ImgeAlertSliderInstructions:Landroid/widget/ImageView;

    sget-object v2, Lcom/oneplus/settings/ui/OPAlertSliderAnimPreference;->pFrameRess:[I

    const/16 v3, 0x14

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/settings/quickpay/SceneAnimation;-><init>(Landroid/widget/ImageView;[II)V

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPAlertSliderAnimPreference;->sceneAnimation:Lcom/oneplus/settings/quickpay/SceneAnimation;

    :cond_5
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPAlertSliderAnimPreference;->sceneAnimation:Lcom/oneplus/settings/quickpay/SceneAnimation;

    invoke-virtual {v0}, Lcom/oneplus/settings/quickpay/SceneAnimation;->play()V

    return-void
.end method

.method public stopAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPAlertSliderAnimPreference;->sceneAnimation:Lcom/oneplus/settings/quickpay/SceneAnimation;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPAlertSliderAnimPreference;->sceneAnimation:Lcom/oneplus/settings/quickpay/SceneAnimation;

    invoke-virtual {v0}, Lcom/oneplus/settings/quickpay/SceneAnimation;->stop()V

    :cond_0
    return-void
.end method
