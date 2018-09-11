.class public interface abstract Landroidx/slice/core/SliceAction;
.super Ljava/lang/Object;
.source "SliceAction.java"


# virtual methods
.method public abstract getAction()Landroid/app/PendingIntent;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract getContentDescription()Ljava/lang/CharSequence;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract getIcon()Landroid/support/v4/graphics/drawable/IconCompat;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract getImageMode()I
.end method

.method public abstract getPriority()I
.end method

.method public abstract getTitle()Ljava/lang/CharSequence;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract isChecked()Z
.end method

.method public abstract isDefaultToggle()Z
.end method

.method public abstract isToggle()Z
.end method

.method public abstract setChecked(Z)Landroidx/slice/core/SliceAction;
.end method

.method public abstract setContentDescription(Ljava/lang/CharSequence;)Landroidx/slice/core/SliceAction;
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract setPriority(I)Landroidx/slice/core/SliceAction;
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
.end method
