.class public Landroidx/slice/builders/impl/MessagingListV1Impl;
.super Landroidx/slice/builders/impl/TemplateBuilderImpl;
.source "MessagingListV1Impl.java"

# interfaces
.implements Landroidx/slice/builders/impl/MessagingBuilder;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slice/builders/impl/MessagingListV1Impl$MessageBuilder;
    }
.end annotation


# instance fields
.field private final mListBuilder:Landroidx/slice/builders/impl/ListBuilderV1Impl;


# direct methods
.method public constructor <init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;)V
    .locals 3
    .param p1, "b"    # Landroidx/slice/Slice$Builder;
    .param p2, "spec"    # Landroidx/slice/SliceSpec;

    .line 42
    invoke-direct {p0, p1, p2}, Landroidx/slice/builders/impl/TemplateBuilderImpl;-><init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;)V

    .line 43
    new-instance v0, Landroidx/slice/builders/impl/ListBuilderV1Impl;

    invoke-direct {v0, p1, p2}, Landroidx/slice/builders/impl/ListBuilderV1Impl;-><init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;)V

    iput-object v0, p0, Landroidx/slice/builders/impl/MessagingListV1Impl;->mListBuilder:Landroidx/slice/builders/impl/ListBuilderV1Impl;

    .line 44
    iget-object v0, p0, Landroidx/slice/builders/impl/MessagingListV1Impl;->mListBuilder:Landroidx/slice/builders/impl/ListBuilderV1Impl;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Landroidx/slice/builders/impl/ListBuilderV1Impl;->setTtl(J)V

    .line 45
    return-void
.end method


# virtual methods
.method public add(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V
    .locals 3
    .param p1, "builder"    # Landroidx/slice/builders/impl/TemplateBuilderImpl;

    .line 51
    move-object v0, p1

    check-cast v0, Landroidx/slice/builders/impl/MessagingListV1Impl$MessageBuilder;

    .line 52
    .local v0, "b":Landroidx/slice/builders/impl/MessagingListV1Impl$MessageBuilder;
    iget-object v1, p0, Landroidx/slice/builders/impl/MessagingListV1Impl;->mListBuilder:Landroidx/slice/builders/impl/ListBuilderV1Impl;

    invoke-static {v0}, Landroidx/slice/builders/impl/MessagingListV1Impl$MessageBuilder;->access$000(Landroidx/slice/builders/impl/MessagingListV1Impl$MessageBuilder;)Landroidx/slice/builders/impl/ListBuilderV1Impl$RowBuilderImpl;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/slice/builders/impl/ListBuilderV1Impl;->addRow(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V

    .line 53
    return-void
.end method

.method public apply(Landroidx/slice/Slice$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroidx/slice/Slice$Builder;

    .line 66
    iget-object v0, p0, Landroidx/slice/builders/impl/MessagingListV1Impl;->mListBuilder:Landroidx/slice/builders/impl/ListBuilderV1Impl;

    invoke-virtual {v0, p1}, Landroidx/slice/builders/impl/ListBuilderV1Impl;->apply(Landroidx/slice/Slice$Builder;)V

    .line 67
    return-void
.end method

.method public createMessageBuilder()Landroidx/slice/builders/impl/TemplateBuilderImpl;
    .locals 1

    .line 59
    new-instance v0, Landroidx/slice/builders/impl/MessagingListV1Impl$MessageBuilder;

    invoke-direct {v0, p0}, Landroidx/slice/builders/impl/MessagingListV1Impl$MessageBuilder;-><init>(Landroidx/slice/builders/impl/MessagingListV1Impl;)V

    return-object v0
.end method
