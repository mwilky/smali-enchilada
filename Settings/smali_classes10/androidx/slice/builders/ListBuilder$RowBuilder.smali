.class public Landroidx/slice/builders/ListBuilder$RowBuilder;
.super Landroidx/slice/builders/TemplateSliceBuilder;
.source "ListBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/builders/ListBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RowBuilder"
.end annotation


# instance fields
.field private mHasDefaultToggle:Z

.field private mHasEndActionOrToggle:Z

.field private mHasEndImage:Z

.field private mHasTimestamp:Z

.field private mImpl:Landroidx/slice/builders/impl/ListBuilder$RowBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Landroidx/slice/builders/ListBuilder;

    invoke-direct {v0, p1, p2}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-static {v0}, Landroidx/slice/builders/ListBuilder;->access$400(Landroidx/slice/builders/ListBuilder;)Landroidx/slice/builders/impl/ListBuilder;

    move-result-object v0

    invoke-interface {v0, p2}, Landroidx/slice/builders/impl/ListBuilder;->createRowBuilder(Landroid/net/Uri;)Landroidx/slice/builders/impl/TemplateBuilderImpl;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/slice/builders/TemplateSliceBuilder;-><init>(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V

    return-void
.end method

.method public constructor <init>(Landroidx/slice/builders/ListBuilder;)V
    .locals 1
    .param p1    # Landroidx/slice/builders/ListBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Landroidx/slice/builders/ListBuilder;->access$400(Landroidx/slice/builders/ListBuilder;)Landroidx/slice/builders/impl/ListBuilder;

    move-result-object v0

    invoke-interface {v0}, Landroidx/slice/builders/impl/ListBuilder;->createRowBuilder()Landroidx/slice/builders/impl/TemplateBuilderImpl;

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

    invoke-static {p1}, Landroidx/slice/builders/ListBuilder;->access$400(Landroidx/slice/builders/ListBuilder;)Landroidx/slice/builders/impl/ListBuilder;

    move-result-object v0

    invoke-interface {v0, p2}, Landroidx/slice/builders/impl/ListBuilder;->createRowBuilder(Landroid/net/Uri;)Landroidx/slice/builders/impl/TemplateBuilderImpl;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/slice/builders/TemplateSliceBuilder;-><init>(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V

    return-void
.end method

.method static synthetic access$000(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/impl/ListBuilder$RowBuilder;
    .locals 1

    iget-object v0, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder$RowBuilder;

    return-object v0
.end method


# virtual methods
.method public addEndItem(J)Landroidx/slice/builders/ListBuilder$RowBuilder;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-boolean v0, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mHasTimestamp:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder$RowBuilder;

    invoke-interface {v0, p1, p2}, Landroidx/slice/builders/impl/ListBuilder$RowBuilder;->addEndItem(J)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mHasTimestamp:Z

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to add a timestamp when one has already been added"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addEndItem(Landroid/graphics/drawable/Icon;)Landroidx/slice/builders/ListBuilder$RowBuilder;
    .locals 1
    .param p1    # Landroid/graphics/drawable/Icon;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->addEndItem(Landroid/graphics/drawable/Icon;IZ)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addEndItem(Landroid/graphics/drawable/Icon;I)Landroidx/slice/builders/ListBuilder$RowBuilder;
    .locals 1
    .param p1    # Landroid/graphics/drawable/Icon;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->addEndItem(Landroid/graphics/drawable/Icon;IZ)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addEndItem(Landroid/graphics/drawable/Icon;IZ)Landroidx/slice/builders/ListBuilder$RowBuilder;
    .locals 2
    .param p1    # Landroid/graphics/drawable/Icon;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mHasEndActionOrToggle:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder$RowBuilder;

    invoke-static {p1}, Landroid/support/v4/graphics/drawable/IconCompat;->createFromIcon(Landroid/graphics/drawable/Icon;)Landroid/support/v4/graphics/drawable/IconCompat;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Landroidx/slice/builders/impl/ListBuilder$RowBuilder;->addEndItem(Landroid/support/v4/graphics/drawable/IconCompat;IZ)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mHasEndImage:Z

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to add an icon to end items when anaction has already been added. End items cannot have a mixture of actions and icons."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addEndItem(Landroid/graphics/drawable/Icon;Z)Landroidx/slice/builders/ListBuilder$RowBuilder;
    .locals 1
    .param p1    # Landroid/graphics/drawable/Icon;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroidx/slice/builders/ListBuilder$RowBuilder;->addEndItem(Landroid/graphics/drawable/Icon;IZ)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addEndItem(Landroid/support/v4/graphics/drawable/IconCompat;)Landroidx/slice/builders/ListBuilder$RowBuilder;
    .locals 1
    .param p1    # Landroid/support/v4/graphics/drawable/IconCompat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->addEndItem(Landroid/support/v4/graphics/drawable/IconCompat;IZ)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addEndItem(Landroid/support/v4/graphics/drawable/IconCompat;I)Landroidx/slice/builders/ListBuilder$RowBuilder;
    .locals 1
    .param p1    # Landroid/support/v4/graphics/drawable/IconCompat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->addEndItem(Landroid/support/v4/graphics/drawable/IconCompat;IZ)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addEndItem(Landroid/support/v4/graphics/drawable/IconCompat;IZ)Landroidx/slice/builders/ListBuilder$RowBuilder;
    .locals 2
    .param p1    # Landroid/support/v4/graphics/drawable/IconCompat;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-boolean v0, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mHasEndActionOrToggle:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder$RowBuilder;

    invoke-interface {v0, p1, p2, p3}, Landroidx/slice/builders/impl/ListBuilder$RowBuilder;->addEndItem(Landroid/support/v4/graphics/drawable/IconCompat;IZ)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mHasEndImage:Z

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to add an icon to end items when anaction has already been added. End items cannot have a mixture of actions and icons."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addEndItem(Landroid/support/v4/graphics/drawable/IconCompat;Z)Landroidx/slice/builders/ListBuilder$RowBuilder;
    .locals 1
    .param p1    # Landroid/support/v4/graphics/drawable/IconCompat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroidx/slice/builders/ListBuilder$RowBuilder;->addEndItem(Landroid/support/v4/graphics/drawable/IconCompat;IZ)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addEndItem(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;
    .locals 1
    .param p1    # Landroidx/slice/builders/SliceAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->addEndItem(Landroidx/slice/builders/SliceAction;Z)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addEndItem(Landroidx/slice/builders/SliceAction;Z)Landroidx/slice/builders/ListBuilder$RowBuilder;
    .locals 2
    .param p1    # Landroidx/slice/builders/SliceAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-boolean v0, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mHasEndImage:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mHasDefaultToggle:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder$RowBuilder;

    invoke-interface {v0, p1, p2}, Landroidx/slice/builders/impl/ListBuilder$RowBuilder;->addEndItem(Landroidx/slice/builders/SliceAction;Z)V

    invoke-virtual {p1}, Landroidx/slice/builders/SliceAction;->getImpl()Landroidx/slice/core/SliceActionImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/slice/core/SliceActionImpl;->isDefaultToggle()Z

    move-result v0

    iput-boolean v0, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mHasDefaultToggle:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mHasEndActionOrToggle:Z

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Only one non-custom toggle can be added in a single row. If you would like to include multiple toggles in a row, set a custom icon for each toggle."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to add an action to end items when anicon has already been added. End items cannot have a mixture of actions and icons."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getImpl()Landroidx/slice/builders/impl/ListBuilder$RowBuilder;
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-object v0, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder$RowBuilder;

    return-object v0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder$RowBuilder;

    invoke-interface {v0, p1}, Landroidx/slice/builders/impl/ListBuilder$RowBuilder;->setContentDescription(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method setImpl(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Landroidx/slice/builders/impl/ListBuilder$RowBuilder;

    iput-object v0, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder$RowBuilder;

    return-void
.end method

.method public setLayoutDirection(I)Landroidx/slice/builders/ListBuilder$RowBuilder;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder$RowBuilder;

    invoke-interface {v0, p1}, Landroidx/slice/builders/impl/ListBuilder$RowBuilder;->setLayoutDirection(I)V

    return-object p0
.end method

.method public setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;
    .locals 1
    .param p1    # Landroidx/slice/builders/SliceAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder$RowBuilder;

    invoke-interface {v0, p1}, Landroidx/slice/builders/impl/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)V

    return-object p0
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setSubtitle(Ljava/lang/CharSequence;Z)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setSubtitle(Ljava/lang/CharSequence;Z)Landroidx/slice/builders/ListBuilder$RowBuilder;
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder$RowBuilder;

    invoke-interface {v0, p1, p2}, Landroidx/slice/builders/impl/ListBuilder$RowBuilder;->setSubtitle(Ljava/lang/CharSequence;Z)V

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder$RowBuilder;

    invoke-interface {v0, p1}, Landroidx/slice/builders/impl/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;Z)Landroidx/slice/builders/ListBuilder$RowBuilder;
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder$RowBuilder;

    invoke-interface {v0, p1, p2}, Landroidx/slice/builders/impl/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;Z)V

    return-object p0
.end method

.method public setTitleItem(J)Landroidx/slice/builders/ListBuilder$RowBuilder;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-boolean v0, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mHasTimestamp:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder$RowBuilder;

    invoke-interface {v0, p1, p2}, Landroidx/slice/builders/impl/ListBuilder$RowBuilder;->setTitleItem(J)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mHasTimestamp:Z

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to add a timestamp when one has already been added"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTitleItem(Landroid/graphics/drawable/Icon;)Landroidx/slice/builders/ListBuilder$RowBuilder;
    .locals 1
    .param p1    # Landroid/graphics/drawable/Icon;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitleItem(Landroid/graphics/drawable/Icon;I)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setTitleItem(Landroid/graphics/drawable/Icon;I)Landroidx/slice/builders/ListBuilder$RowBuilder;
    .locals 3
    .param p1    # Landroid/graphics/drawable/Icon;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder$RowBuilder;

    invoke-static {p1}, Landroid/support/v4/graphics/drawable/IconCompat;->createFromIcon(Landroid/graphics/drawable/Icon;)Landroid/support/v4/graphics/drawable/IconCompat;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, p2, v2}, Landroidx/slice/builders/impl/ListBuilder$RowBuilder;->setTitleItem(Landroid/support/v4/graphics/drawable/IconCompat;IZ)V

    return-object p0
.end method

.method public setTitleItem(Landroid/graphics/drawable/Icon;IZ)Landroidx/slice/builders/ListBuilder$RowBuilder;
    .locals 2
    .param p1    # Landroid/graphics/drawable/Icon;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder$RowBuilder;

    invoke-static {p1}, Landroid/support/v4/graphics/drawable/IconCompat;->createFromIcon(Landroid/graphics/drawable/Icon;)Landroid/support/v4/graphics/drawable/IconCompat;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Landroidx/slice/builders/impl/ListBuilder$RowBuilder;->setTitleItem(Landroid/support/v4/graphics/drawable/IconCompat;IZ)V

    return-object p0
.end method

.method public setTitleItem(Landroid/graphics/drawable/Icon;Z)Landroidx/slice/builders/ListBuilder$RowBuilder;
    .locals 1
    .param p1    # Landroid/graphics/drawable/Icon;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitleItem(Landroid/graphics/drawable/Icon;IZ)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setTitleItem(Landroid/support/v4/graphics/drawable/IconCompat;)Landroidx/slice/builders/ListBuilder$RowBuilder;
    .locals 1
    .param p1    # Landroid/support/v4/graphics/drawable/IconCompat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitleItem(Landroid/support/v4/graphics/drawable/IconCompat;I)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setTitleItem(Landroid/support/v4/graphics/drawable/IconCompat;I)Landroidx/slice/builders/ListBuilder$RowBuilder;
    .locals 2
    .param p1    # Landroid/support/v4/graphics/drawable/IconCompat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder$RowBuilder;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Landroidx/slice/builders/impl/ListBuilder$RowBuilder;->setTitleItem(Landroid/support/v4/graphics/drawable/IconCompat;IZ)V

    return-object p0
.end method

.method public setTitleItem(Landroid/support/v4/graphics/drawable/IconCompat;IZ)Landroidx/slice/builders/ListBuilder$RowBuilder;
    .locals 1
    .param p1    # Landroid/support/v4/graphics/drawable/IconCompat;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder$RowBuilder;

    invoke-interface {v0, p1, p2, p3}, Landroidx/slice/builders/impl/ListBuilder$RowBuilder;->setTitleItem(Landroid/support/v4/graphics/drawable/IconCompat;IZ)V

    return-object p0
.end method

.method public setTitleItem(Landroid/support/v4/graphics/drawable/IconCompat;Z)Landroidx/slice/builders/ListBuilder$RowBuilder;
    .locals 1
    .param p1    # Landroid/support/v4/graphics/drawable/IconCompat;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitleItem(Landroid/support/v4/graphics/drawable/IconCompat;IZ)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setTitleItem(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;
    .locals 1
    .param p1    # Landroidx/slice/builders/SliceAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitleItem(Landroidx/slice/builders/SliceAction;Z)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setTitleItem(Landroidx/slice/builders/SliceAction;Z)Landroidx/slice/builders/ListBuilder$RowBuilder;
    .locals 1
    .param p1    # Landroidx/slice/builders/SliceAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder$RowBuilder;

    invoke-interface {v0, p1, p2}, Landroidx/slice/builders/impl/ListBuilder$RowBuilder;->setTitleItem(Landroidx/slice/builders/SliceAction;Z)V

    return-object p0
.end method
