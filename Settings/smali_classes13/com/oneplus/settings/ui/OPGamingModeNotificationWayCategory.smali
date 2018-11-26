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

    invoke-direct {p0, p1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0d017c

    iput v0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mLayoutResId:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mHasInited:Z

    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x7f0d017c

    iput v0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mLayoutResId:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mHasInited:Z

    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const v0, 0x7f0d017c

    iput v0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mLayoutResId:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mHasInited:Z

    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mContentResolver:Landroid/content/ContentResolver;

    iget v0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mLayoutResId:I

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    iget-object v0, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    const v0, 0x7f0a053a

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mSuspensionNoticeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    const v0, 0x7f0a05ef

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mWeakTextRemindingAnim:Lcom/airbnb/lottie/LottieAnimationView;

    const v0, 0x7f0a04e3

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mShieldingNotificationImageView:Landroid/widget/ImageView;

    const v0, 0x7f0a036c

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mNoficationWaySummary:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mSuspensionNoticeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v2, "op_suspension_notice_anim_dark.json"

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mSuspensionNoticeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v2, "op_suspension_notice_anim_light.json"

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mWeakTextRemindingAnim:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v2, "op_weak_text_reminding_anim_dark.json"

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mWeakTextRemindingAnim:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v2, "op_weak_text_reminding_anim_light.json"

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mShieldingNotificationImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080417

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mShieldingNotificationImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080418

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mWeakTextRemindingAnim:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->loop(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mWeakTextRemindingAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    iput-boolean v2, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mHasInited:Z

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->startAnim()V

    return-void
.end method

.method public releaseAnim()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mSuspensionNoticeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mWeakTextRemindingAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mSuspensionNoticeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mWeakTextRemindingAnim:Lcom/airbnb/lottie/LottieAnimationView;

    return-void
.end method

.method public setAnimTypes(I)V
    .locals 3

    iget-boolean v0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mHasInited:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->stopAnim()V

    const/4 v0, 0x0

    const/16 v1, 0x8

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v2, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mSuspensionNoticeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mShieldingNotificationImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mWeakTextRemindingAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mWeakTextRemindingAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mNoficationWaySummary:Landroid/widget/TextView;

    const v1, 0x7f120d2f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mSuspensionNoticeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mWeakTextRemindingAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mShieldingNotificationImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mNoficationWaySummary:Landroid/widget/TextView;

    const v1, 0x7f120cd0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mWeakTextRemindingAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mShieldingNotificationImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mSuspensionNoticeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mSuspensionNoticeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mNoficationWaySummary:Landroid/widget/TextView;

    const v1, 0x7f120cef

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    nop

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

    iget-boolean v0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mHasInited:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "game_mode_block_notification"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->setAnimTypes(I)V

    :cond_0
    return-void
.end method

.method public stopAnim()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mSuspensionNoticeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPGamingModeNotificationWayCategory;->mWeakTextRemindingAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    return-void
.end method
