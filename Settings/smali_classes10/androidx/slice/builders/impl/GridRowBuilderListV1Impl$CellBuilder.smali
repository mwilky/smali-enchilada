.class public final Landroidx/slice/builders/impl/GridRowBuilderListV1Impl$CellBuilder;
.super Landroidx/slice/builders/impl/TemplateBuilderImpl;
.source "GridRowBuilderListV1Impl.java"

# interfaces
.implements Landroidx/slice/builders/impl/GridRowBuilder$CellBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/builders/impl/GridRowBuilderListV1Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CellBuilder"
.end annotation


# instance fields
.field private mContentIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 147
    new-instance v0, Landroidx/slice/Slice$Builder;

    invoke-direct {v0, p1}, Landroidx/slice/Slice$Builder;-><init>(Landroid/net/Uri;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/slice/builders/impl/TemplateBuilderImpl;-><init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;)V

    .line 148
    return-void
.end method

.method public constructor <init>(Landroidx/slice/builders/impl/GridRowBuilderListV1Impl;)V
    .locals 2
    .param p1, "parent"    # Landroidx/slice/builders/impl/GridRowBuilderListV1Impl;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 141
    invoke-virtual {p1}, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl;->createChildBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/slice/builders/impl/TemplateBuilderImpl;-><init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;)V

    .line 142
    return-void
.end method


# virtual methods
.method public addImage(Landroid/support/v4/graphics/drawable/IconCompat;I)V
    .locals 1
    .param p1, "image"    # Landroid/support/v4/graphics/drawable/IconCompat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "imageMode"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 192
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl$CellBuilder;->addImage(Landroid/support/v4/graphics/drawable/IconCompat;IZ)V

    .line 193
    return-void
.end method

.method public addImage(Landroid/support/v4/graphics/drawable/IconCompat;IZ)V
    .locals 3
    .param p1, "image"    # Landroid/support/v4/graphics/drawable/IconCompat;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "imageMode"    # I
    .param p3, "isLoading"    # Z
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 201
    .local v0, "hints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    .line 202
    const-string v1, "no_tint"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    :cond_0
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    .line 205
    const-string v1, "large"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    :cond_1
    if-eqz p3, :cond_2

    .line 208
    const-string v1, "partial"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    :cond_2
    invoke-virtual {p0}, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl$CellBuilder;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Landroidx/slice/Slice$Builder;->addIcon(Landroid/support/v4/graphics/drawable/IconCompat;Ljava/lang/String;Ljava/util/List;)Landroidx/slice/Slice$Builder;

    .line 211
    return-void
.end method

.method public addText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 155
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl$CellBuilder;->addText(Ljava/lang/CharSequence;Z)V

    .line 156
    return-void
.end method

.method public addText(Ljava/lang/CharSequence;Z)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "isLoading"    # Z

    .line 162
    if-eqz p2, :cond_0

    const-string v0, "partial"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 165
    .local v0, "hints":[Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl$CellBuilder;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Landroidx/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 166
    return-void
.end method

.method public addTitleText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 173
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl$CellBuilder;->addTitleText(Ljava/lang/CharSequence;Z)V

    .line 174
    return-void
.end method

.method public addTitleText(Ljava/lang/CharSequence;Z)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "isLoading"    # Z
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 181
    if-eqz p2, :cond_0

    const-string v0, "partial"

    const-string v1, "title"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "title"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, "hints":[Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl$CellBuilder;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Landroidx/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 185
    return-void
.end method

.method public apply(Landroidx/slice/Slice$Builder;)V
    .locals 3
    .param p1, "b"    # Landroidx/slice/Slice$Builder;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 234
    invoke-virtual {p0}, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl$CellBuilder;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v0

    const-string v1, "horizontal"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 235
    iget-object v0, p0, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl$CellBuilder;->mContentIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl$CellBuilder;->mContentIntent:Landroid/app/PendingIntent;

    invoke-virtual {p0}, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl$CellBuilder;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroidx/slice/Slice$Builder;->addAction(Landroid/app/PendingIntent;Landroidx/slice/Slice;Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    goto :goto_0

    .line 238
    :cond_0
    invoke-virtual {p0}, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl$CellBuilder;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/slice/Slice$Builder;->addSubSlice(Landroidx/slice/Slice;)Landroidx/slice/Slice$Builder;

    .line 240
    :goto_0
    return-void
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "description"    # Ljava/lang/CharSequence;

    .line 225
    invoke-virtual {p0}, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl$CellBuilder;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v0

    const-string v1, "content_description"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Landroidx/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 226
    return-void
.end method

.method public setContentIntent(Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "intent"    # Landroid/app/PendingIntent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 218
    iput-object p1, p0, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl$CellBuilder;->mContentIntent:Landroid/app/PendingIntent;

    .line 219
    return-void
.end method
