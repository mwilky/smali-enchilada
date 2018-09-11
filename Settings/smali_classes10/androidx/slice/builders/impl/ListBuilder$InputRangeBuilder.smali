.class public interface abstract Landroidx/slice/builders/impl/ListBuilder$InputRangeBuilder;
.super Ljava/lang/Object;
.source "ListBuilder.java"

# interfaces
.implements Landroidx/slice/builders/impl/ListBuilder$RangeBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/builders/impl/ListBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InputRangeBuilder"
.end annotation


# virtual methods
.method public abstract setInputAction(Landroid/app/PendingIntent;)V
    .param p1    # Landroid/app/PendingIntent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setThumb(Landroid/support/v4/graphics/drawable/IconCompat;)V
    .param p1    # Landroid/support/v4/graphics/drawable/IconCompat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
