.class public Landroid/preference/VolumePreference;
.super Landroid/preference/SeekBarDialogPreference;
.source "VolumePreference.java"

# interfaces
.implements Landroid/preference/PreferenceManager$OnActivityStopListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/preference/SeekBarVolumizer$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/VolumePreference$SavedState;,
        Landroid/preference/VolumePreference$VolumeStore;
    }
.end annotation


# instance fields
.field private mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

.field private mStreamType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/VolumePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x11100bc

    invoke-direct {p0, p1, p2, v0}, Landroid/preference/VolumePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/preference/VolumePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/SeekBarDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    sget-object v0, Lcom/android/internal/R$styleable;->VolumePreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/preference/VolumePreference;->mStreamType:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private cleanup()V
    .locals 4

    invoke-virtual {p0}, Landroid/preference/VolumePreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceManager;->unregisterOnActivityStopListener(Landroid/preference/PreferenceManager$OnActivityStopListener;)V

    iget-object v0, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/preference/VolumePreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const v3, 0x10203d9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_0
    iget-object v3, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v3}, Landroid/preference/SeekBarVolumizer;->revertVolume()V

    :cond_1
    iget-object v2, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v2}, Landroid/preference/SeekBarVolumizer;->stop()V

    iput-object v1, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    :cond_2
    return-void
.end method


# virtual methods
.method public onActivityStop()V
    .locals 1

    iget-object v0, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/SeekBarVolumizer;->stopSample()V

    :cond_0
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onBindDialogView(Landroid/view/View;)V

    const v0, 0x10203d9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    new-instance v1, Landroid/preference/SeekBarVolumizer;

    invoke-virtual {p0}, Landroid/preference/VolumePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Landroid/preference/VolumePreference;->mStreamType:I

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4, p0}, Landroid/preference/SeekBarVolumizer;-><init>(Landroid/content/Context;ILandroid/net/Uri;Landroid/preference/SeekBarVolumizer$Callback;)V

    iput-object v1, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    iget-object v1, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v1}, Landroid/preference/SeekBarVolumizer;->start()V

    iget-object v1, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v1, v0}, Landroid/preference/SeekBarVolumizer;->setSeekBar(Landroid/widget/SeekBar;)V

    invoke-virtual {p0}, Landroid/preference/VolumePreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/preference/PreferenceManager;->registerOnActivityStopListener(Landroid/preference/PreferenceManager$OnActivityStopListener;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onDialogClosed(Z)V

    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/SeekBarVolumizer;->revertVolume()V

    :cond_0
    invoke-direct {p0}, Landroid/preference/VolumePreference;->cleanup()V

    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4

    iget-object v0, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    const/16 v3, 0xa4

    if-eq p2, v3, :cond_4

    packed-switch p2, :pswitch_data_0

    return v2

    :pswitch_0
    if-eqz v0, :cond_2

    iget-object v2, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/preference/SeekBarVolumizer;->changeVolumeBy(I)V

    :cond_2
    return v1

    :pswitch_1
    if-eqz v0, :cond_3

    iget-object v2, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v2, v1}, Landroid/preference/SeekBarVolumizer;->changeVolumeBy(I)V

    :cond_3
    return v1

    :cond_4
    if-eqz v0, :cond_5

    iget-object v2, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v2}, Landroid/preference/SeekBarVolumizer;->muteVolume()V

    :cond_5
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onMuted(ZZ)V
    .locals 0

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/preference/VolumePreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/preference/VolumePreference$SavedState;

    invoke-virtual {v0}, Landroid/preference/VolumePreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/preference/SeekBarDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v1, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/VolumePreference$SavedState;->getVolumeStore()Landroid/preference/VolumePreference$VolumeStore;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/SeekBarVolumizer;->onRestoreInstanceState(Landroid/preference/VolumePreference$VolumeStore;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSampleStarting(Landroid/preference/SeekBarVolumizer;)V
    .locals 1

    iget-object v0, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/SeekBarVolumizer;->stopSample()V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    invoke-super {p0}, Landroid/preference/SeekBarDialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-virtual {p0}, Landroid/preference/VolumePreference;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Landroid/preference/VolumePreference$SavedState;

    invoke-direct {v1, v0}, Landroid/preference/VolumePreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget-object v2, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v1}, Landroid/preference/VolumePreference$SavedState;->getVolumeStore()Landroid/preference/VolumePreference$VolumeStore;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/SeekBarVolumizer;->onSaveInstanceState(Landroid/preference/VolumePreference$VolumeStore;)V

    :cond_1
    return-object v1
.end method

.method public setStreamType(I)V
    .locals 0

    iput p1, p0, Landroid/preference/VolumePreference;->mStreamType:I

    return-void
.end method
