.class public interface abstract Landroidx/slice/builders/impl/ListBuilder$RangeBuilder;
.super Ljava/lang/Object;
.source "ListBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/builders/impl/ListBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RangeBuilder"
.end annotation


# virtual methods
.method public abstract setContentDescription(Ljava/lang/CharSequence;)V
.end method

.method public abstract setLayoutDirection(I)V
.end method

.method public abstract setMax(I)V
.end method

.method public abstract setMin(I)V
.end method

.method public abstract setPrimaryAction(Landroidx/slice/builders/SliceAction;)V
    .param p1    # Landroidx/slice/builders/SliceAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setSubtitle(Ljava/lang/CharSequence;)V
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setTitle(Ljava/lang/CharSequence;)V
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setValue(I)V
.end method
