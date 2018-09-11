.class public final Landroidx/slice/builders/impl/MessagingListV1Impl$MessageBuilder;
.super Landroidx/slice/builders/impl/TemplateBuilderImpl;
.source "MessagingListV1Impl.java"

# interfaces
.implements Landroidx/slice/builders/impl/MessagingBuilder$MessageBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/builders/impl/MessagingListV1Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MessageBuilder"
.end annotation


# instance fields
.field private final mListBuilder:Landroidx/slice/builders/impl/ListBuilderV1Impl$RowBuilderImpl;


# direct methods
.method private constructor <init>(Landroidx/slice/Slice$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroidx/slice/Slice$Builder;

    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/slice/builders/impl/TemplateBuilderImpl;-><init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;)V

    .line 83
    new-instance v0, Landroidx/slice/builders/impl/ListBuilderV1Impl$RowBuilderImpl;

    invoke-direct {v0, p1}, Landroidx/slice/builders/impl/ListBuilderV1Impl$RowBuilderImpl;-><init>(Landroidx/slice/Slice$Builder;)V

    iput-object v0, p0, Landroidx/slice/builders/impl/MessagingListV1Impl$MessageBuilder;->mListBuilder:Landroidx/slice/builders/impl/ListBuilderV1Impl$RowBuilderImpl;

    .line 84
    return-void
.end method

.method public constructor <init>(Landroidx/slice/builders/impl/MessagingListV1Impl;)V
    .locals 1
    .param p1, "parent"    # Landroidx/slice/builders/impl/MessagingListV1Impl;

    .line 78
    invoke-virtual {p1}, Landroidx/slice/builders/impl/MessagingListV1Impl;->createChildBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/slice/builders/impl/MessagingListV1Impl$MessageBuilder;-><init>(Landroidx/slice/Slice$Builder;)V

    .line 79
    return-void
.end method

.method static synthetic access$000(Landroidx/slice/builders/impl/MessagingListV1Impl$MessageBuilder;)Landroidx/slice/builders/impl/ListBuilderV1Impl$RowBuilderImpl;
    .locals 1
    .param p0, "x0"    # Landroidx/slice/builders/impl/MessagingListV1Impl$MessageBuilder;

    .line 71
    iget-object v0, p0, Landroidx/slice/builders/impl/MessagingListV1Impl$MessageBuilder;->mListBuilder:Landroidx/slice/builders/impl/ListBuilderV1Impl$RowBuilderImpl;

    return-object v0
.end method


# virtual methods
.method public addSource(Landroid/graphics/drawable/Icon;)V
    .locals 3
    .param p1, "source"    # Landroid/graphics/drawable/Icon;
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .line 91
    iget-object v0, p0, Landroidx/slice/builders/impl/MessagingListV1Impl$MessageBuilder;->mListBuilder:Landroidx/slice/builders/impl/ListBuilderV1Impl$RowBuilderImpl;

    invoke-static {p1}, Landroid/support/v4/graphics/drawable/IconCompat;->createFromIcon(Landroid/graphics/drawable/Icon;)Landroid/support/v4/graphics/drawable/IconCompat;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroidx/slice/builders/impl/ListBuilderV1Impl$RowBuilderImpl;->setTitleItem(Landroid/support/v4/graphics/drawable/IconCompat;I)V

    .line 92
    return-void
.end method

.method public addText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 98
    iget-object v0, p0, Landroidx/slice/builders/impl/MessagingListV1Impl$MessageBuilder;->mListBuilder:Landroidx/slice/builders/impl/ListBuilderV1Impl$RowBuilderImpl;

    invoke-virtual {v0, p1}, Landroidx/slice/builders/impl/ListBuilderV1Impl$RowBuilderImpl;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 99
    return-void
.end method

.method public addTimestamp(J)V
    .locals 1
    .param p1, "timestamp"    # J

    .line 105
    iget-object v0, p0, Landroidx/slice/builders/impl/MessagingListV1Impl$MessageBuilder;->mListBuilder:Landroidx/slice/builders/impl/ListBuilderV1Impl$RowBuilderImpl;

    invoke-virtual {v0, p1, p2}, Landroidx/slice/builders/impl/ListBuilderV1Impl$RowBuilderImpl;->addEndItem(J)V

    .line 106
    return-void
.end method

.method public apply(Landroidx/slice/Slice$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroidx/slice/Slice$Builder;

    .line 112
    iget-object v0, p0, Landroidx/slice/builders/impl/MessagingListV1Impl$MessageBuilder;->mListBuilder:Landroidx/slice/builders/impl/ListBuilderV1Impl$RowBuilderImpl;

    invoke-virtual {v0, p1}, Landroidx/slice/builders/impl/ListBuilderV1Impl$RowBuilderImpl;->apply(Landroidx/slice/Slice$Builder;)V

    .line 113
    return-void
.end method
