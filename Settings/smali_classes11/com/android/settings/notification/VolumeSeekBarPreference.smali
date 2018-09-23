.class public Lcom/android/settings/notification/VolumeSeekBarPreference;
.super Lcom/android/settings/widget/SeekBarPreference;
.source "VolumeSeekBarPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VolumeSeekBarPreference"


# instance fields
.field mAudioManager:Landroid/media/AudioManager;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mCallback:Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;

.field private mIconResId:I

.field private mIconView:Landroid/widget/ImageView;

.field private mMuteIconResId:I

.field private mMuted:Z

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mStopped:Z

.field private mStream:I

.field private mSuppressionText:Ljava/lang/String;

.field private mSuppressionTextView:Landroid/widget/TextView;

.field private mVolumizer:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

.field private mZenMuted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/widget/SeekBarPreference;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0d01fd

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setLayoutResource(I)V

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x7f0d01fd

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setLayoutResource(I)V

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/widget/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const v0, 0x7f0d01fd

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setLayoutResource(I)V

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/widget/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const v0, 0x7f0d01fd

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setLayoutResource(I)V

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/VolumeSeekBarPreference;)Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mCallback:Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/notification/VolumeSeekBarPreference;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mStream:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/notification/VolumeSeekBarPreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->updateIconView()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/settings/notification/VolumeSeekBarPreference;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mMuted:Z

    return p1
.end method

.method static synthetic access$402(Lcom/android/settings/notification/VolumeSeekBarPreference;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mZenMuted:Z

    return p1
.end method

.method private getMediaVolumeUri()Landroid/net/Uri;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f110011

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private init()V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/android/settings/notification/VolumeSeekBarPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/VolumeSeekBarPreference$1;-><init>(Lcom/android/settings/notification/VolumeSeekBarPreference;)V

    iget v1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mStream:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    invoke-direct {p0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->getMediaVolumeUri()Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mVolumizer:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    if-nez v2, :cond_2

    new-instance v2, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-virtual {p0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mStream:I

    invoke-direct {v2, v3, v4, v1, v0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;-><init>(Landroid/content/Context;ILandroid/net/Uri;Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Callback;)V

    iput-object v2, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mVolumizer:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    :cond_2
    iget-object v2, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mVolumizer:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-virtual {v2}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->start()V

    iget-object v2, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mVolumizer:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    iget-object v3, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->setSeekBar(Landroid/widget/SeekBar;)V

    invoke-direct {p0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->updateIconView()V

    invoke-direct {p0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->updateSuppressionText()V

    invoke-virtual {p0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mVolumizer:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-virtual {v2}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->stop()V

    :cond_3
    return-void
.end method

.method private updateIconView()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mIconView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mIconResId:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mIconView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mIconResId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mIconView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mMuteIconResId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method private updateSuppressionText()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mSuppressionTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mSuppressionTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mSuppressionText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mSuppressionText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mSuppressionTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_1

    const/4 v2, 0x4

    nop

    :cond_1
    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method public onActivityPause()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mStopped:Z

    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mVolumizer:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mVolumizer:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-virtual {v0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mVolumizer:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    :cond_0
    return-void
.end method

.method public onActivityResume()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mStopped:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->init()V

    :cond_0
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/widget/SeekBarPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    iget v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mStream:I

    if-nez v0, :cond_0

    const-string v0, "VolumeSeekBarPreference"

    const-string v1, "No stream found, not binding volumizer"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const v0, 0x10203d9

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mIconView:Landroid/widget/ImageView;

    const v0, 0x7f0a04fe

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mSuppressionTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->init()V

    return-void
.end method

.method public setCallback(Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mCallback:Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;

    return-void
.end method

.method public setMuteIcon(I)V
    .locals 1

    iget v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mMuteIconResId:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mMuteIconResId:I

    invoke-direct {p0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->updateIconView()V

    return-void
.end method

.method public setSeekbar(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_0
    return-void
.end method

.method public setStream(I)V
    .locals 2

    iput p1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mStream:I

    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mStream:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setMax(I)V

    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mStream:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMinVolumeInt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setMin(I)V

    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mStream:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setProgress(I)V

    return-void
.end method

.method public setSuppressionText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mSuppressionText:Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mSuppressionText:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->updateSuppressionText()V

    return-void
.end method

.method public showIcon(I)V
    .locals 1

    iget v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mIconResId:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->mIconResId:I

    invoke-direct {p0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->updateIconView()V

    return-void
.end method
