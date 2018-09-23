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

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/slice/builders/impl/TemplateBuilderImpl;-><init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;)V

    return-void
.end method

.method public constructor <init>(Landroidx/slice/builders/impl/MessagingBasicImpl;)V
    .locals 1

    invoke-virtual {p1}, Landroidx/slice/builders/impl/MessagingBasicImpl;->createChildBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/slice/builders/impl/MessagingBasicImpl$MessageBuilder;-><init>(Landroidx/slice/Slice$Builder;)V

    return-void
.end method

.method static synthetic access$000(Landroidx/slice/builders/impl/MessagingBasicImpl$MessageBuilder;)Landroid/graphics/drawable/Icon;
    .locals 1

    iget-object v0, p0, Landroidx/slice/builders/impl/MessagingBasicImpl$MessageBuilder;->mIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method static synthetic access$100(Landroidx/slice/builders/impl/MessagingBasicImpl$MessageBuilder;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroidx/slice/builders/impl/MessagingBasicImpl$MessageBuilder;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$200(Landroidx/slice/builders/impl/MessagingBasicImpl$MessageBuilder;)J
    .locals 2

    iget-wide v0, p0, Landroidx/slice/builders/impl/MessagingBasicImpl$MessageBuilder;->mTimestamp:J

    return-wide v0
.end method


# virtual methods
.method public addSource(Landroid/graphics/drawable/Icon;)V
    .locals 0
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x17
    .end annotation

    iput-object p1, p0, Landroidx/slice/builders/impl/MessagingBasicImpl$MessageBuilder;->mIcon:Landroid/graphics/drawable/Icon;

    return-void
.end method

.method public addText(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Landroidx/slice/builders/impl/MessagingBasicImpl$MessageBuilder;->mText:Ljava/lang/CharSequence;

    return-void
.end method

.method public addTimestamp(J)V
    .locals 0

    iput-wide p1, p0, Landroidx/slice/builders/impl/MessagingBasicImpl$MessageBuilder;->mTimestamp:J

    return-void
.end method

.method public apply(Landroidx/slice/Slice$Builder;)V
    .locals 0

    return-void
.end method
