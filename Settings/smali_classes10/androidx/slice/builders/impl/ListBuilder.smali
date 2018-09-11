.class public interface abstract Landroidx/slice/builders/impl/ListBuilder;
.super Ljava/lang/Object;
.source "ListBuilder.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slice/builders/impl/ListBuilder$HeaderBuilder;,
        Landroidx/slice/builders/impl/ListBuilder$RowBuilder;,
        Landroidx/slice/builders/impl/ListBuilder$InputRangeBuilder;,
        Landroidx/slice/builders/impl/ListBuilder$RangeBuilder;
    }
.end annotation


# virtual methods
.method public abstract addAction(Landroidx/slice/builders/SliceAction;)V
.end method

.method public abstract addGridRow(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V
.end method

.method public abstract addInputRange(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V
.end method

.method public abstract addRange(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V
.end method

.method public abstract addRow(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V
.end method

.method public abstract createGridBuilder()Landroidx/slice/builders/impl/TemplateBuilderImpl;
.end method

.method public abstract createHeaderBuilder()Landroidx/slice/builders/impl/TemplateBuilderImpl;
.end method

.method public abstract createHeaderBuilder(Landroid/net/Uri;)Landroidx/slice/builders/impl/TemplateBuilderImpl;
.end method

.method public abstract createInputRangeBuilder()Landroidx/slice/builders/impl/TemplateBuilderImpl;
.end method

.method public abstract createRangeBuilder()Landroidx/slice/builders/impl/TemplateBuilderImpl;
.end method

.method public abstract createRowBuilder()Landroidx/slice/builders/impl/TemplateBuilderImpl;
.end method

.method public abstract createRowBuilder(Landroid/net/Uri;)Landroidx/slice/builders/impl/TemplateBuilderImpl;
.end method

.method public abstract setColor(I)V
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
.end method

.method public abstract setHeader(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V
.end method

.method public abstract setIsError(Z)V
.end method

.method public abstract setKeywords(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setLayoutDirection(I)V
.end method

.method public abstract setSeeMoreAction(Landroid/app/PendingIntent;)V
.end method

.method public abstract setSeeMoreRow(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V
.end method

.method public abstract setTtl(J)V
.end method
