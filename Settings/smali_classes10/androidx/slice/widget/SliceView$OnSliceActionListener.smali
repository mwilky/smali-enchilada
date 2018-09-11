.class public interface abstract Landroidx/slice/widget/SliceView$OnSliceActionListener;
.super Ljava/lang/Object;
.source "SliceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/widget/SliceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnSliceActionListener"
.end annotation


# virtual methods
.method public abstract onSliceAction(Landroidx/slice/widget/EventInfo;Landroidx/slice/SliceItem;)V
    .param p1    # Landroidx/slice/widget/EventInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/slice/SliceItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
