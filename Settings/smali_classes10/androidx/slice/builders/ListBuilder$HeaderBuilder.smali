.class public Landroidx/slice/builders/ListBuilder$HeaderBuilder;
.super Landroidx/slice/builders/TemplateSliceBuilder;
.source "ListBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/builders/ListBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HeaderBuilder"
.end annotation


# instance fields
.field private mImpl:Landroidx/slice/builders/impl/ListBuilder$HeaderBuilder;


# direct methods
.method public constructor <init>(Landroidx/slice/builders/ListBuilder;)V
    .locals 1
    .param p1    # Landroidx/slice/builders/ListBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Landroidx/slice/builders/ListBuilder;->access$400(Landroidx/slice/builders/ListBuilder;)Landroidx/slice/builders/impl/ListBuilder;

    move-result-object v0

    invoke-interface {v0}, Landroidx/slice/builders/impl/ListBuilder;->createHeaderBuilder()Landroidx/slice/builders/impl/TemplateBuilderImpl;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/slice/builders/TemplateSliceBuilder;-><init>(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V

    return-void
.end method

.method public constructor <init>(Landroidx/slice/builders/ListBuilder;Landroid/net/Uri;)V
    .locals 1
    .param p1    # Landroidx/slice/builders/ListBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    invoke-static {p1}, Landroidx/slice/builders/ListBuilder;->access$400(Landroidx/slice/builders/ListBuilder;)Landroidx/slice/builders/impl/ListBuilder;

    move-result-object v0

    invoke-interface {v0, p2}, Landroidx/slice/builders/impl/ListBuilder;->createHeaderBuilder(Landroid/net/Uri;)Landroidx/slice/builders/impl/TemplateBuilderImpl;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/slice/builders/TemplateSliceBuilder;-><init>(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V

    return-void
.end method

.method static synthetic access$100(Landroidx/slice/builders/ListBuilder$HeaderBuilder;)Landroidx/slice/builders/impl/ListBuilder$HeaderBuilder;
    .locals 1

    iget-object v0, p0, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder$HeaderBuilder;

    return-object v0
.end method


# virtual methods
.method public setContentDescription(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$HeaderBuilder;
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder$HeaderBuilder;

    invoke-interface {v0, p1}, Landroidx/slice/builders/impl/ListBuilder$HeaderBuilder;->setContentDescription(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method setImpl(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Landroidx/slice/builders/impl/ListBuilder$HeaderBuilder;

    iput-object v0, p0, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder$HeaderBuilder;

    return-void
.end method

.method public setLayoutDirection(I)Landroidx/slice/builders/ListBuilder$HeaderBuilder;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder$HeaderBuilder;

    invoke-interface {v0, p1}, Landroidx/slice/builders/impl/ListBuilder$HeaderBuilder;->setLayoutDirection(I)V

    return-object p0
.end method

.method public setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$HeaderBuilder;
    .locals 1
    .param p1    # Landroidx/slice/builders/SliceAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder$HeaderBuilder;

    invoke-interface {v0, p1}, Landroidx/slice/builders/impl/ListBuilder$HeaderBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)V

    return-object p0
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$HeaderBuilder;
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->setSubtitle(Ljava/lang/CharSequence;Z)Landroidx/slice/builders/ListBuilder$HeaderBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setSubtitle(Ljava/lang/CharSequence;Z)Landroidx/slice/builders/ListBuilder$HeaderBuilder;
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder$HeaderBuilder;

    invoke-interface {v0, p1, p2}, Landroidx/slice/builders/impl/ListBuilder$HeaderBuilder;->setSubtitle(Ljava/lang/CharSequence;Z)V

    return-object p0
.end method

.method public setSummary(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$HeaderBuilder;
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->setSummary(Ljava/lang/CharSequence;Z)Landroidx/slice/builders/ListBuilder$HeaderBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setSummary(Ljava/lang/CharSequence;Z)Landroidx/slice/builders/ListBuilder$HeaderBuilder;
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder$HeaderBuilder;

    invoke-interface {v0, p1, p2}, Landroidx/slice/builders/impl/ListBuilder$HeaderBuilder;->setSummary(Ljava/lang/CharSequence;Z)V

    return-object p0
.end method

.method public setSummarySubtitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$HeaderBuilder;
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->setSummary(Ljava/lang/CharSequence;Z)Landroidx/slice/builders/ListBuilder$HeaderBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setSummarySubtitle(Ljava/lang/CharSequence;Z)Landroidx/slice/builders/ListBuilder$HeaderBuilder;
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->setSummary(Ljava/lang/CharSequence;Z)Landroidx/slice/builders/ListBuilder$HeaderBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$HeaderBuilder;
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->setTitle(Ljava/lang/CharSequence;Z)Landroidx/slice/builders/ListBuilder$HeaderBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setTitle(Ljava/lang/CharSequence;Z)Landroidx/slice/builders/ListBuilder$HeaderBuilder;
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder$HeaderBuilder;

    invoke-interface {v0, p1, p2}, Landroidx/slice/builders/impl/ListBuilder$HeaderBuilder;->setTitle(Ljava/lang/CharSequence;Z)V

    return-object p0
.end method
