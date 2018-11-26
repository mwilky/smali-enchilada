.class public Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;
.super Landroid/support/v7/preference/Preference;
.source "OPCustomFingeprintAnimVideoPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final ANIM_STYLE_0:I = 0x3

.field private static final ANIM_STYLE_1:I = 0x0

.field private static final ANIM_STYLE_2:I = 0x1

.field private static final ANIM_STYLE_3:I = 0x2

.field private static final TAG:Ljava/lang/String; = "VideoPreference"


# instance fields
.field private mAnimStyleButton_0:Landroid/widget/RadioButton;

.field private mAnimStyleButton_1:Landroid/widget/RadioButton;

.field private mAnimStyleButton_2:Landroid/widget/RadioButton;

.field private mAnimStyleButton_3:Landroid/widget/RadioButton;

.field private mAnimStyleView_0:Landroid/view/View;

.field private mAnimStyle_0:Landroid/view/View;

.field private mAnimStyle_1:Landroid/view/View;

.field private mAnimStyle_2:Landroid/view/View;

.field private mAnimStyle_3:Landroid/view/View;

.field mAnimationAvailable:Z
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mAspectRadio:F

.field private final mContext:Landroid/content/Context;

.field mMediaPlayer:Landroid/media/MediaPlayer;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mPreviewResource:I

.field private mVideoPath:Landroid/net/Uri;

.field private mVideoPaused:Z

.field private mVideoReady:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mAspectRadio:F

    iput-object p1, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/android/settings/R$styleable;->VideoPreference:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-direct {p0}, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->getCustomAnimationId()I

    move-result v3

    move v1, v3

    new-instance v3, Landroid/net/Uri$Builder;

    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    const-string v4, "android.resource"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mVideoPath:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mVideoPath:Landroid/net/Uri;

    invoke-static {v3, v4}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v3

    if-lez v3, :cond_1

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->setVisible(Z)V

    const v4, 0x7f0d0150

    sget-object v5, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->MCL:Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    invoke-static {}, Lcom/oneplus/custom/utils/OpCustomizeSettings;->getCustomType()Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const v4, 0x7f0d0151

    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->setLayoutResource(I)V

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mPreviewResource:I

    iget-object v2, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v5, Lcom/android/settings/widget/-$$Lambda$OPCustomFingeprintAnimVideoPreference$xNjQuqlzU7hQu-C5vLxvtUk8_xY;

    invoke-direct {v5, p0}, Lcom/android/settings/widget/-$$Lambda$OPCustomFingeprintAnimVideoPreference$xNjQuqlzU7hQu-C5vLxvtUk8_xY;-><init>(Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;)V

    invoke-virtual {v2, v5}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    iget-object v2, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    sget-object v5, Lcom/android/settings/widget/-$$Lambda$OPCustomFingeprintAnimVideoPreference$-76bRwQYPctZEhfpNbtqN2ejOb4;->INSTANCE:Lcom/android/settings/widget/-$$Lambda$OPCustomFingeprintAnimVideoPreference$-76bRwQYPctZEhfpNbtqN2ejOb4;

    invoke-virtual {v2, v5}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iput-boolean v3, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mAnimationAvailable:Z

    invoke-virtual {p0}, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->updateAspectRatio()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->setVisible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "VideoPreference"

    const-string v3, "Animation resource not found. Will not show animation."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    nop

    return-void

    :goto_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method static synthetic access$000(Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mVideoReady:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mVideoReady:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mVideoPaused:Z

    return v0
.end method

.method private changeAnimStyle(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->setAnimStyle(I)V

    invoke-direct {p0, p1}, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->playAnimByStyle(I)V

    return-void
.end method

.method private getCustomAnimationId()I
    .locals 4

    iget-object v0, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "op_custom_unlock_animation_style"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const v1, 0x7f110013

    packed-switch v0, :pswitch_data_0

    const v1, 0x7f110013

    goto :goto_0

    :pswitch_0
    const v1, 0x7f110012

    goto :goto_0

    :pswitch_1
    const v1, 0x7f110015

    goto :goto_0

    :pswitch_2
    const v1, 0x7f110014

    goto :goto_0

    :pswitch_3
    const v1, 0x7f110013

    nop

    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic lambda$new$0(Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;Landroid/media/MediaPlayer;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mVideoReady:Z

    return-void
.end method

.method static synthetic lambda$new$1(Landroid/media/MediaPlayer;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    return-void
.end method

.method private playAnimByStyle(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    :cond_0
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "android.resource"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->getCustomAnimationId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mVideoPath:Landroid/net/Uri;

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    iget-object v0, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mVideoPath:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    iget-object v0, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private setAnimSelectStatus()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "op_custom_unlock_animation_style"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mAnimStyleButton_0:Landroid/widget/RadioButton;

    invoke-virtual {v3, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mAnimStyleButton_1:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mAnimStyleButton_2:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mAnimStyleButton_3:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    iget-object v3, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mAnimStyleButton_0:Landroid/widget/RadioButton;

    invoke-virtual {v3, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mAnimStyleButton_1:Landroid/widget/RadioButton;

    invoke-virtual {v3, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mAnimStyleButton_2:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mAnimStyleButton_3:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :cond_1
    if-ne v0, v1, :cond_2

    iget-object v3, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mAnimStyleButton_0:Landroid/widget/RadioButton;

    invoke-virtual {v3, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mAnimStyleButton_1:Landroid/widget/RadioButton;

    invoke-virtual {v3, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mAnimStyleButton_2:Landroid/widget/RadioButton;

    invoke-virtual {v3, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mAnimStyleButton_3:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mAnimStyleButton_0:Landroid/widget/RadioButton;

    invoke-virtual {v3, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mAnimStyleButton_1:Landroid/widget/RadioButton;

    invoke-virtual {v3, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mAnimStyleButton_2:Landroid/widget/RadioButton;

    invoke-virtual {v3, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mAnimStyleButton_3:Landroid/widget/RadioButton;

    invoke-virtual {v2, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method private setAnimStyle(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "op_custom_unlock_animation_style"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method


# virtual methods
.method public isVideoPaused()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mVideoPaused:Z

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    iget-boolean v0, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mAnimationAvailable:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f0a05d9

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    new-instance v1, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$1;-><init>(Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v1, 0x7f0a05d8

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "#282828"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    :cond_1
    const-string v2, "#f5f5f5"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_0
    const v2, 0x7f0a05de

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/TextureView;

    const v3, 0x7f0a05db

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f0a05da

    invoke-virtual {p1, v4}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v5, 0x7f0a05d7

    invoke-virtual {p1, v5}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/settings/widget/AspectRatioFrameLayout;

    const v6, 0x7f0a014c

    invoke-virtual {p1, v6}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mAnimStyleView_0:Landroid/view/View;

    const v7, 0x7f0a014d

    invoke-virtual {p1, v7}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RadioButton;

    iput-object v7, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mAnimStyleButton_0:Landroid/widget/RadioButton;

    const v7, 0x7f0a0150

    invoke-virtual {p1, v7}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RadioButton;

    iput-object v7, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mAnimStyleButton_1:Landroid/widget/RadioButton;

    const v7, 0x7f0a0153

    invoke-virtual {p1, v7}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RadioButton;

    iput-object v7, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mAnimStyleButton_2:Landroid/widget/RadioButton;

    const v7, 0x7f0a0156

    invoke-virtual {p1, v7}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RadioButton;

    iput-object v7, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mAnimStyleButton_3:Landroid/widget/RadioButton;

    invoke-virtual {p1, v6}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mAnimStyle_0:Landroid/view/View;

    const v6, 0x7f0a014f

    invoke-virtual {p1, v6}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mAnimStyle_1:Landroid/view/View;

    const v6, 0x7f0a0152

    invoke-virtual {p1, v6}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mAnimStyle_2:Landroid/view/View;

    const v6, 0x7f0a0155

    invoke-virtual {p1, v6}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mAnimStyle_3:Landroid/view/View;

    sget-object v6, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->MCL:Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    invoke-static {}, Lcom/oneplus/custom/utils/OpCustomizeSettings;->getCustomType()Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mAnimStyleView_0:Landroid/view/View;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget-object v6, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mAnimStyleView_0:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object v6, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mAnimStyle_0:Landroid/view/View;

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mAnimStyle_1:Landroid/view/View;

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mAnimStyle_2:Landroid/view/View;

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mAnimStyle_3:Landroid/view/View;

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->setAnimSelectStatus()V

    iget v6, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mPreviewResource:I

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    iget v6, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mAspectRadio:F

    invoke-virtual {v5, v6}, Lcom/android/settings/widget/AspectRatioFrameLayout;->setAspectRatio(F)V

    new-instance v6, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$2;

    invoke-direct {v6, p0, v3, v4}, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$2;-><init>(Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    invoke-virtual {v2, v6}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "op_custom_unlock_animation_style"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v3, 0x1

    const v4, 0x7f0a014c

    if-ne v1, v4, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v1}, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->changeAnimStyle(I)V

    iget-object v1, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mAnimStyleButton_0:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mAnimStyleButton_1:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mAnimStyleButton_2:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mAnimStyleButton_3:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v4, 0x7f0a014f

    if-ne v1, v4, :cond_3

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-direct {p0, v2}, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->changeAnimStyle(I)V

    iget-object v1, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mAnimStyleButton_0:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mAnimStyleButton_1:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mAnimStyleButton_2:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mAnimStyleButton_3:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v4, 0x7f0a0152

    if-ne v1, v4, :cond_5

    if-ne v0, v3, :cond_4

    return-void

    :cond_4
    invoke-direct {p0, v3}, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->changeAnimStyle(I)V

    iget-object v1, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mAnimStyleButton_0:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mAnimStyleButton_1:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mAnimStyleButton_2:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mAnimStyleButton_3:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v4, 0x7f0a0155

    if-ne v1, v4, :cond_7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    return-void

    :cond_6
    invoke-direct {p0, v1}, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->changeAnimStyle(I)V

    iget-object v1, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mAnimStyleButton_0:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mAnimStyleButton_1:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mAnimStyleButton_2:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mAnimStyleButton_3:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_7
    :goto_0
    return-void
.end method

.method public onDetached()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    iget-object v0, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    :cond_0
    invoke-super {p0}, Landroid/support/v7/preference/Preference;->onDetached()V

    return-void
.end method

.method public onViewInvisible()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    :cond_0
    return-void
.end method

.method public onViewVisible(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mVideoPaused:Z

    iget-boolean v0, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mVideoReady:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    :cond_0
    return-void
.end method

.method updateAspectRatio()V
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mAspectRadio:F

    return-void
.end method
