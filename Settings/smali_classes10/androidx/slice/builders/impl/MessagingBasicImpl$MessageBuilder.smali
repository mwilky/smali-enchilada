.class public final Landroidx/slice/builders/impl/MessagingBasicImpl$MessageBuilder;
.super Landroidx/slice/builders/impl/TemplateBuilderImpl;
.source "MessagingBasicImpl.java"

# interfaces
.implements Landroidx/slice/builders/impl/MessagingBuilder$MessageBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/builders/impl/MessagingBasicImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MessageBuilder"
.end annotation


# instance fields
.field private mIcon:Landroid/graphics/drawable/Icon;
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x17
    .end annotation
.end field

.field private mText:Ljava/lang/CharSequence;

.field private mTimestamp:J


# direct methods
.method private constructor <init>(Landroidx/slice/Slice$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroidx/slice/Slice$Builder;

    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/slice/builders/impl/TemplateBuilderImpl;-><init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroidx/slice/builders/impl/MessagingBasicImpl;)V
    .locals 1
    .param p1, "parent"    # Landroidx/slice/builders/impl/MessagingBasicImpl;

    .line 90
    invoke-virtual {p1}, Landroidx/slice/builders/impl/MessagingBasicImpl;->createChildBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/slice/builders/impl/MessagingBasicImpl$MessageBuilder;-><init>(Landroidx/slice/Slice$Builder;)V

    .line 91
    return-void
.end method

.method static synthetic access$000(Landroidx/slice/builders/impl/MessagingBasicImpl$MessageBuilder;)Landroid/graphics/drawable/Icon;
    .locals 1
    .param p0, "x0"    # Landroidx/slice/builders/impl/MessagingBasicImpl$MessageBuilder;

    .line 79
    iget-object v0, p0, Landroidx/slice/builders/impl/MessagingBasicImpl$MessageBuilder;->mIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method static synthetic access$100(Landroidx/slice/builders/impl/MessagingBasicImpl$MessageBuilder;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Landroidx/slice/builders/impl/MessagingBasicImpl$MessageBuilder;

    .line 79
    iget-object v0, p0, Landroidx/slice/builders/impl/MessagingBasicImpl$MessageBuilder;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$200(Landroidx/slice/builders/impl/MessagingBasicImpl$MessageBuilder;)J
    .locals 2
    .param p0, "x0"    # Landroidx/slice/builders/impl/MessagingBasicImpl$MessageBuilder;

    .line 79
    iget-wide v0, p0, Landroidx/slice/builders/impl/MessagingBasicImpl$MessageBuilder;->mTimestamp:J

    return-wide v0
.end method


# virtual methods
.method public addSource(Landroid/graphics/drawable/Icon;)V
    .locals 0
    .param p1, "source"    # Landroid/graphics/drawable/Icon;
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .line 104
    iput-object p1, p0, Landroidx/slice/builders/impl/MessagingBasicImpl$MessageBuilder;->mIcon:Landroid/graphics/drawable/Icon;

    .line 105
    return-void
.end method

.method public addText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 111
    iput-object p1, p0, Landroidx/slice/builders/impl/MessagingBasicImpl$MessageBuilder;->mText:Ljava/lang/CharSequence;

    .line 112
    return-void
.end method

.method public addTimestamp(J)V
    .locals 0
    .param p1, "timestamp"    # J

    .line 118
    iput-wide p1, p0, Landroidx/slice/builders/impl/MessagingBasicImpl$MessageBuilder;->mTimestamp:J

    .line 119
    return-void
.end method

.method public apply(Landroidx/slice/Slice$Builder;)V
    .locals 0
    .param p1, "builder"    # Landroidx/slice/Slice$Builder;

    .line 125
    return-void
.end method
