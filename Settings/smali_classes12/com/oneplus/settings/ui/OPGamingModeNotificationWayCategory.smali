.class public Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;
.super Landroid/support/v7/preference/Preference;
.source "OPGamingModeNotificationWayCategory.java"


# static fields
.field private static final GAME_MODE_BLOCK_NOTIFICATION:Ljava/lang/String; = "game_mode_block_notification"

.field private static final SHIELDING_NOTIFICATION_VALUE:I = 0x1

.field private static final SUSPENSION_NOTICE_VALUE:I = 0x0

.field private static final WEAK_TEXT_REMINDING_VALUE:I = 0x2


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mHasInited:Z

.field private mLayoutResId:I

.field private mNoficationWaySummary:Landroid/widget/TextView;

.field private mShieldingNotificationImageView:Landroid/widget/ImageView;

.field private mSuspensionNoticeAnim:Lcom/airbnb/lottie/LottieAnimationView;

.field private mWeakTextRemindingAnim:Lcom/airbnb/lottie/LottieAnimationView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 44
    invoke-direct {p0, p1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 34
    const v0, 0x7f0d0170

    iput v0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mLayoutResId:I

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mHasInited:Z

    .line 46
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->initViews(Landroid/content/Context;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    const v0, 0x7f0d0170

    iput v0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mLayoutResId:I

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mHasInited:Z

    .line 52
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->initViews(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    const v0, 0x7f0d0170

    iput v0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mLayoutResId:I

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mHasInited:Z

    .line 59
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->initViews(Landroid/content/Context;)V

    .line 60
    return-void
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 63
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mContext:Landroid/content/Context;

    .line 64
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mContentResolver:Landroid/content/ContentResolver;

    .line 65
    iget v0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mLayoutResId:I

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->setLayoutResource(I)V

    .line 66
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 4
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .line 69
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 70
    iget-object v0, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 71
    const v0, 0x7f0a04ff

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mSuspensionNoticeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    .line 72
    const v0, 0x7f0a05b0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mWeakTextRemindingAnim:Lcom/airbnb/lottie/LottieAnimationView;

    .line 73
    const v0, 0x7f0a04ab

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mShieldingNotificationImageView:Landroid/widget/ImageView;

    .line 74
    const v0, 0x7f0a0347

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mNoficationWaySummary:Landroid/widget/TextView;

    .line 75
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mSuspensionNoticeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v2, "op_suspension_notice_anim_dark.json"

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_0

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mSuspensionNoticeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v2, "op_suspension_notice_anim_light.json"

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 80
    :goto_0
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mWeakTextRemindingAnim:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v2, "op_weak_text_reminding_anim_dark.json"

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_1

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mWeakTextRemindingAnim:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v2, "op_weak_text_reminding_anim_light.json"

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 85
    :goto_1
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 86
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mShieldingNotificationImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080400

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 88
    :cond_2
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mShieldingNotificationImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080401

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 90
    :goto_2
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mWeakTextRemindingAnim:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->loop(Z)V

    .line 91
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mWeakTextRemindingAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 92
    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    .line 93
    iput-boolean v2, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mHasInited:Z

    .line 94
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->startAnim()V

    .line 95
    return-void
.end method

.method public releaseAnim()V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mSuspensionNoticeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 111
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mWeakTextRemindingAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mSuspensionNoticeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    .line 113
    iput-object v0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mWeakTextRemindingAnim:Lcom/airbnb/lottie/LottieAnimationView;

    .line 114
    return-void
.end method

.method public setAnimTypes(I)V
    .locals 3
    .param p1, "type"    # I

    .line 117
    iget-boolean v0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mHasInited:Z

    if-nez v0, :cond_0

    .line 118
    return-void

    .line 120
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->stopAnim()V

    .line 121
    const/4 v0, 0x0

    const/16 v1, 0x8

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 130
    :pswitch_0
    iget-object v2, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mSuspensionNoticeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    .line 131
    iget-object v2, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mShieldingNotificationImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 132
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mWeakTextRemindingAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mWeakTextRemindingAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 134
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mNoficationWaySummary:Landroid/widget/TextView;

    const v1, 0x7f120cf6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 135
    goto :goto_0

    .line 137
    :pswitch_1
    iget-object v2, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mSuspensionNoticeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    .line 138
    iget-object v2, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mWeakTextRemindingAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    .line 139
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mShieldingNotificationImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mNoficationWaySummary:Landroid/widget/TextView;

    const v1, 0x7f120ca0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 141
    goto :goto_0

    .line 123
    :pswitch_2
    iget-object v2, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mWeakTextRemindingAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    .line 124
    iget-object v2, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mShieldingNotificationImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 125
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mSuspensionNoticeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mSuspensionNoticeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 127
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mNoficationWaySummary:Landroid/widget/TextView;

    const v1, 0x7f120cb9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 128
    nop

    .line 145
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public startAnim()V
    .locals 4

    .line 98
    iget-boolean v0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mHasInited:Z

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "game_mode_block_notification"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 100
    .local v0, "value":I
    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->setAnimTypes(I)V

    .line 102
    .end local v0    # "value":I
    :cond_0
    return-void
.end method

.method public stopAnim()V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mSuspensionNoticeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 106
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mWeakTextRemindingAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    .line 107
    return-void
.end method
