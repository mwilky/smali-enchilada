.class public Landroidx/slice/builders/impl/MessagingBasicImpl;
.super Landroidx/slice/builders/impl/TemplateBuilderImpl;
.source "MessagingBasicImpl.java"

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
        Landroidx/slice/builders/impl/MessagingBasicImpl$MessageBuilder;
    }
.end annotation


# instance fields
.field private mLastMessage:Landroidx/slice/builders/impl/MessagingBasicImpl$MessageBuilder;


# direct methods
.method public constructor <init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/slice/builders/impl/TemplateBuilderImpl;-><init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;)V

    return-void
.end method


# virtual methods
.method public add(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V
    .locals 5

    move-object v0, p1

    check-cast v0, Landroidx/slice/builders/impl/MessagingBasicImpl$MessageBuilder;

    iget-object v1, p0, Landroidx/slice/builders/impl/MessagingBasicImpl;->mLastMessage:Landroidx/slice/builders/impl/MessagingBasicImpl$MessageBuilder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/slice/builders/impl/MessagingBasicImpl;->mLastMessage:Landroidx/slice/builders/impl/MessagingBasicImpl$MessageBuilder;

    invoke-static {v1}, Landroidx/slice/builders/impl/MessagingBasicImpl$MessageBuilder;->access$200(Landroidx/slice/builders/impl/MessagingBasicImpl$MessageBuilder;)J

    move-result-wide v1

    invoke-static {v0}, Landroidx/slice/builders/impl/MessagingBasicImpl$MessageBuilder;->access$200(Landroidx/slice/builders/impl/MessagingBasicImpl$MessageBuilder;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    :cond_0
    iput-object v0, p0, Landroidx/slice/builders/impl/MessagingBasicImpl;->mLastMessage:Landroidx/slice/builders/impl/MessagingBasicImpl$MessageBuilder;

    :cond_1
    return-void
.end method

.method public apply(Landroidx/slice/Slice$Builder;)V
    .locals 4

    iget-object v0, p0, Landroidx/slice/builders/impl/MessagingBasicImpl;->mLastMessage:Landroidx/slice/builders/impl/MessagingBasicImpl$MessageBuilder;

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroidx/slice/builders/impl/MessagingBasicImpl;->mLastMessage:Landroidx/slice/builders/impl/MessagingBasicImpl$MessageBuilder;

    invoke-static {v0}, Landroidx/slice/builders/impl/MessagingBasicImpl$MessageBuilder;->access$000(Landroidx/slice/builders/impl/MessagingBasicImpl$MessageBuilder;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/slice/builders/impl/MessagingBasicImpl;->mLastMessage:Landroidx/slice/builders/impl/MessagingBasicImpl$MessageBuilder;

    invoke-static {v0}, Landroidx/slice/builders/impl/MessagingBasicImpl$MessageBuilder;->access$000(Landroidx/slice/builders/impl/MessagingBasicImpl$MessageBuilder;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/graphics/drawable/IconCompat;->createFromIcon(Landroid/graphics/drawable/Icon;)Landroid/support/v4/graphics/drawable/IconCompat;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {p1, v0, v3, v1}, Landroidx/slice/Slice$Builder;->addIcon(Landroid/support/v4/graphics/drawable/IconCompat;Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    :cond_0
    iget-object v0, p0, Landroidx/slice/builders/impl/MessagingBasicImpl;->mLastMessage:Landroidx/slice/builders/impl/MessagingBasicImpl$MessageBuilder;

    invoke-static {v0}, Landroidx/slice/builders/impl/MessagingBasicImpl$MessageBuilder;->access$100(Landroidx/slice/builders/impl/MessagingBasicImpl$MessageBuilder;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/slice/builders/impl/MessagingBasicImpl;->mLastMessage:Landroidx/slice/builders/impl/MessagingBasicImpl$MessageBuilder;

    invoke-static {v0}, Landroidx/slice/builders/impl/MessagingBasicImpl$MessageBuilder;->access$100(Landroidx/slice/builders/impl/MessagingBasicImpl$MessageBuilder;)Ljava/lang/CharSequence;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {p1, v0, v3, v1}, Landroidx/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    :cond_1
    return-void
.end method

.method public createMessageBuilder()Landroidx/slice/builders/impl/TemplateBuilderImpl;
    .locals 1

    new-instance v0, Landroidx/slice/builders/impl/MessagingBasicImpl$MessageBuilder;

    invoke-direct {v0, p0}, Landroidx/slice/builders/impl/MessagingBasicImpl$MessageBuilder;-><init>(Landroidx/slice/builders/impl/MessagingBasicImpl;)V

    return-object v0
.end method
