.class public interface abstract Landroidx/slice/builders/impl/GridRowBuilder;
.super Ljava/lang/Object;
.source "GridRowBuilder.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slice/builders/impl/GridRowBuilder$CellBuilder;
    }
.end annotation


# virtual methods
.method public abstract addCell(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V
.end method

.method public abstract createGridRowBuilder()Landroidx/slice/builders/impl/TemplateBuilderImpl;
.end method

.method public abstract createGridRowBuilder(Landroid/net/Uri;)Landroidx/slice/builders/impl/TemplateBuilderImpl;
.end method

.method public abstract setContentDescription(Ljava/lang/CharSequence;)V
.end method

.method public abstract setLayoutDirection(I)V
.end method

.method public abstract setPrimaryAction(Landroidx/slice/builders/SliceAction;)V
.end method

.method public abstract setSeeMoreAction(Landroid/app/PendingIntent;)V
.end method

.method public abstract setSeeMoreCell(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V
.end method
