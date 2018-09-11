.class public Landroidx/slice/builders/MessagingSliceBuilder;
.super Landroidx/slice/builders/TemplateSliceBuilder;
.source "MessagingSliceBuilder.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slice/builders/MessagingSliceBuilder$MessageBuilder;
    }
.end annotation


# static fields
.field public static final MAXIMUM_RETAINED_MESSAGES:I = 0x32


# instance fields
.field private mBuilder:Landroidx/slice/builders/impl/MessagingBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 58
    invoke-direct {p0, p1, p2}, Landroidx/slice/builders/TemplateSliceBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 59
    return-void
.end method

.method static synthetic access$100(Landroidx/slice/builders/MessagingSliceBuilder;)Landroidx/slice/builders/impl/MessagingBuilder;
    .locals 1
    .param p0, "x0"    # Landroidx/slice/builders/MessagingSliceBuilder;

    .line 44
    iget-object v0, p0, Landroidx/slice/builders/MessagingSliceBuilder;->mBuilder:Landroidx/slice/builders/impl/MessagingBuilder;

    return-object v0
.end method


# virtual methods
.method public add(Landroid/support/v4/util/Consumer;)Landroidx/slice/builders/MessagingSliceBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/Consumer<",
            "Landroidx/slice/builders/MessagingSliceBuilder$MessageBuilder;",
            ">;)",
            "Landroidx/slice/builders/MessagingSliceBuilder;"
        }
    .end annotation

    .line 73
    .local p1, "c":Landroid/support/v4/util/Consumer;, "Landroid/support/v4/util/Consumer<Landroidx/slice/builders/MessagingSliceBuilder$MessageBuilder;>;"
    new-instance v0, Landroidx/slice/builders/MessagingSliceBuilder$MessageBuilder;

    invoke-direct {v0, p0}, Landroidx/slice/builders/MessagingSliceBuilder$MessageBuilder;-><init>(Landroidx/slice/builders/MessagingSliceBuilder;)V

    .line 74
    .local v0, "b":Landroidx/slice/builders/MessagingSliceBuilder$MessageBuilder;
    invoke-interface {p1, v0}, Landroid/support/v4/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 75
    invoke-virtual {p0, v0}, Landroidx/slice/builders/MessagingSliceBuilder;->add(Landroidx/slice/builders/MessagingSliceBuilder$MessageBuilder;)Landroidx/slice/builders/MessagingSliceBuilder;

    move-result-object v1

    return-object v1
.end method

.method public add(Landroidx/slice/builders/MessagingSliceBuilder$MessageBuilder;)Landroidx/slice/builders/MessagingSliceBuilder;
    .locals 2
    .param p1, "builder"    # Landroidx/slice/builders/MessagingSliceBuilder$MessageBuilder;

    .line 65
    iget-object v0, p0, Landroidx/slice/builders/MessagingSliceBuilder;->mBuilder:Landroidx/slice/builders/impl/MessagingBuilder;

    invoke-static {p1}, Landroidx/slice/builders/MessagingSliceBuilder$MessageBuilder;->access$000(Landroidx/slice/builders/MessagingSliceBuilder$MessageBuilder;)Landroidx/slice/builders/impl/MessagingBuilder$MessageBuilder;

    move-result-object v1

    check-cast v1, Landroidx/slice/builders/impl/TemplateBuilderImpl;

    invoke-interface {v0, v1}, Landroidx/slice/builders/impl/MessagingBuilder;->add(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V

    .line 66
    return-object p0
.end method

.method protected selectImpl()Landroidx/slice/builders/impl/TemplateBuilderImpl;
    .locals 3
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 89
    sget-object v0, Landroidx/slice/SliceSpecs;->MESSAGING:Landroidx/slice/SliceSpec;

    invoke-virtual {p0, v0}, Landroidx/slice/builders/MessagingSliceBuilder;->checkCompatible(Landroidx/slice/SliceSpec;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    new-instance v0, Landroidx/slice/builders/impl/MessagingV1Impl;

    invoke-virtual {p0}, Landroidx/slice/builders/MessagingSliceBuilder;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v1

    sget-object v2, Landroidx/slice/SliceSpecs;->MESSAGING:Landroidx/slice/SliceSpec;

    invoke-direct {v0, v1, v2}, Landroidx/slice/builders/impl/MessagingV1Impl;-><init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;)V

    return-object v0

    .line 91
    :cond_0
    sget-object v0, Landroidx/slice/SliceSpecs;->LIST:Landroidx/slice/SliceSpec;

    invoke-virtual {p0, v0}, Landroidx/slice/builders/MessagingSliceBuilder;->checkCompatible(Landroidx/slice/SliceSpec;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    new-instance v0, Landroidx/slice/builders/impl/MessagingListV1Impl;

    invoke-virtual {p0}, Landroidx/slice/builders/MessagingSliceBuilder;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v1

    sget-object v2, Landroidx/slice/SliceSpecs;->LIST:Landroidx/slice/SliceSpec;

    invoke-direct {v0, v1, v2}, Landroidx/slice/builders/impl/MessagingListV1Impl;-><init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;)V

    return-object v0

    .line 93
    :cond_1
    sget-object v0, Landroidx/slice/SliceSpecs;->BASIC:Landroidx/slice/SliceSpec;

    invoke-virtual {p0, v0}, Landroidx/slice/builders/MessagingSliceBuilder;->checkCompatible(Landroidx/slice/SliceSpec;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 94
    new-instance v0, Landroidx/slice/builders/impl/MessagingBasicImpl;

    invoke-virtual {p0}, Landroidx/slice/builders/MessagingSliceBuilder;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v1

    sget-object v2, Landroidx/slice/SliceSpecs;->BASIC:Landroidx/slice/SliceSpec;

    invoke-direct {v0, v1, v2}, Landroidx/slice/builders/impl/MessagingBasicImpl;-><init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;)V

    return-object v0

    .line 96
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method setImpl(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V
    .locals 1
    .param p1, "impl"    # Landroidx/slice/builders/impl/TemplateBuilderImpl;

    .line 80
    move-object v0, p1

    check-cast v0, Landroidx/slice/builders/impl/MessagingBuilder;

    iput-object v0, p0, Landroidx/slice/builders/MessagingSliceBuilder;->mBuilder:Landroidx/slice/builders/impl/MessagingBuilder;

    .line 81
    return-void
.end method
