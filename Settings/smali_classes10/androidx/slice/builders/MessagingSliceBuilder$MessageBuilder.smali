.class public final Landroidx/slice/builders/MessagingSliceBuilder$MessageBuilder;
.super Landroidx/slice/builders/TemplateSliceBuilder;
.source "MessagingSliceBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/builders/MessagingSliceBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MessageBuilder"
.end annotation


# instance fields
.field private mImpl:Landroidx/slice/builders/impl/MessagingBuilder$MessageBuilder;


# direct methods
.method public constructor <init>(Landroidx/slice/builders/MessagingSliceBuilder;)V
    .locals 1
    .param p1, "parent"    # Landroidx/slice/builders/MessagingSliceBuilder;

    .line 110
    invoke-static {p1}, Landroidx/slice/builders/MessagingSliceBuilder;->access$100(Landroidx/slice/builders/MessagingSliceBuilder;)Landroidx/slice/builders/impl/MessagingBuilder;

    move-result-object v0

    invoke-interface {v0}, Landroidx/slice/builders/impl/MessagingBuilder;->createMessageBuilder()Landroidx/slice/builders/impl/TemplateBuilderImpl;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/slice/builders/TemplateSliceBuilder;-><init>(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V

    .line 111
    return-void
.end method

.method static synthetic access$000(Landroidx/slice/builders/MessagingSliceBuilder$MessageBuilder;)Landroidx/slice/builders/impl/MessagingBuilder$MessageBuilder;
    .locals 1
    .param p0, "x0"    # Landroidx/slice/builders/MessagingSliceBuilder$MessageBuilder;

    .line 102
    iget-object v0, p0, Landroidx/slice/builders/MessagingSliceBuilder$MessageBuilder;->mImpl:Landroidx/slice/builders/impl/MessagingBuilder$MessageBuilder;

    return-object v0
.end method


# virtual methods
.method public addSource(Landroid/graphics/drawable/Icon;)Landroidx/slice/builders/MessagingSliceBuilder$MessageBuilder;
    .locals 1
    .param p1, "source"    # Landroid/graphics/drawable/Icon;
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .line 118
    iget-object v0, p0, Landroidx/slice/builders/MessagingSliceBuilder$MessageBuilder;->mImpl:Landroidx/slice/builders/impl/MessagingBuilder$MessageBuilder;

    invoke-interface {v0, p1}, Landroidx/slice/builders/impl/MessagingBuilder$MessageBuilder;->addSource(Landroid/graphics/drawable/Icon;)V

    .line 119
    return-object p0
.end method

.method public addSource(Landroid/support/v4/graphics/drawable/IconCompat;)Landroidx/slice/builders/MessagingSliceBuilder$MessageBuilder;
    .locals 2
    .param p1, "source"    # Landroid/support/v4/graphics/drawable/IconCompat;

    .line 126
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 127
    iget-object v0, p0, Landroidx/slice/builders/MessagingSliceBuilder$MessageBuilder;->mImpl:Landroidx/slice/builders/impl/MessagingBuilder$MessageBuilder;

    invoke-virtual {p1}, Landroid/support/v4/graphics/drawable/IconCompat;->toIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/slice/builders/impl/MessagingBuilder$MessageBuilder;->addSource(Landroid/graphics/drawable/Icon;)V

    .line 129
    :cond_0
    return-object p0
.end method

.method public addText(Ljava/lang/CharSequence;)Landroidx/slice/builders/MessagingSliceBuilder$MessageBuilder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 136
    iget-object v0, p0, Landroidx/slice/builders/MessagingSliceBuilder$MessageBuilder;->mImpl:Landroidx/slice/builders/impl/MessagingBuilder$MessageBuilder;

    invoke-interface {v0, p1}, Landroidx/slice/builders/impl/MessagingBuilder$MessageBuilder;->addText(Ljava/lang/CharSequence;)V

    .line 137
    return-object p0
.end method

.method public addTimestamp(J)Landroidx/slice/builders/MessagingSliceBuilder$MessageBuilder;
    .locals 1
    .param p1, "timestamp"    # J

    .line 144
    iget-object v0, p0, Landroidx/slice/builders/MessagingSliceBuilder$MessageBuilder;->mImpl:Landroidx/slice/builders/impl/MessagingBuilder$MessageBuilder;

    invoke-interface {v0, p1, p2}, Landroidx/slice/builders/impl/MessagingBuilder$MessageBuilder;->addTimestamp(J)V

    .line 145
    return-object p0
.end method

.method setImpl(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V
    .locals 1
    .param p1, "impl"    # Landroidx/slice/builders/impl/TemplateBuilderImpl;

    .line 150
    move-object v0, p1

    check-cast v0, Landroidx/slice/builders/impl/MessagingBuilder$MessageBuilder;

    iput-object v0, p0, Landroidx/slice/builders/MessagingSliceBuilder$MessageBuilder;->mImpl:Landroidx/slice/builders/impl/MessagingBuilder$MessageBuilder;

    .line 151
    return-void
.end method
