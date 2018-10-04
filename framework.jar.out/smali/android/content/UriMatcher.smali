.class public Landroid/content/UriMatcher;
.super Ljava/lang/Object;
.source "UriMatcher.java"


# static fields
.field private static final EXACT:I = 0x0

.field public static final NO_MATCH:I = -0x1

.field private static final NUMBER:I = 0x1

.field private static final TEXT:I = 0x2


# instance fields
.field private mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/UriMatcher;",
            ">;"
        }
    .end annotation
.end field

.field private mCode:I

.field private mText:Ljava/lang/String;

.field private mWhich:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/content/UriMatcher;->mCode:I

    iput v0, p0, Landroid/content/UriMatcher;->mWhich:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/UriMatcher;->mChildren:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/UriMatcher;->mText:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/content/UriMatcher;->mCode:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/content/UriMatcher;->mWhich:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/UriMatcher;->mChildren:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/UriMatcher;->mText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addURI(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 12

    if-ltz p3, :cond_a

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_1

    move-object v3, p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v2, :cond_0

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2f

    if-ne v4, v5, :cond_0

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    :cond_0
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    array-length v3, v0

    goto :goto_0

    :cond_2
    move v3, v1

    :goto_0
    move-object v4, p0

    const/4 v5, -0x1

    :goto_1
    if-ge v5, v3, :cond_9

    if-gez v5, :cond_3

    move-object v6, p1

    goto :goto_2

    :cond_3
    aget-object v6, v0, v5

    :goto_2
    iget-object v7, v4, Landroid/content/UriMatcher;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v9, v1

    :goto_3
    if-ge v9, v8, :cond_5

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/UriMatcher;

    iget-object v11, v10, Landroid/content/UriMatcher;->mText:Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    move-object v4, v10

    goto :goto_4

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    if-ne v9, v8, :cond_8

    new-instance v10, Landroid/content/UriMatcher;

    invoke-direct {v10}, Landroid/content/UriMatcher;-><init>()V

    const-string v11, "#"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    iput v2, v10, Landroid/content/UriMatcher;->mWhich:I

    goto :goto_5

    :cond_6
    const-string v11, "*"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    const/4 v11, 0x2

    iput v11, v10, Landroid/content/UriMatcher;->mWhich:I

    goto :goto_5

    :cond_7
    iput v1, v10, Landroid/content/UriMatcher;->mWhich:I

    :goto_5
    iput-object v6, v10, Landroid/content/UriMatcher;->mText:Ljava/lang/String;

    iget-object v11, v4, Landroid/content/UriMatcher;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v4, v10

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_9
    iput p3, v4, Landroid/content/UriMatcher;->mCode:I

    return-void

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is invalid: it must be positive"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public match(Landroid/net/Uri;)I
    .locals 16

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    move-object/from16 v2, p0

    if-nez v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    move-object/from16 v3, p0

    iget v4, v3, Landroid/content/UriMatcher;->mCode:I

    return v4

    :cond_0
    move-object/from16 v3, p0

    const/4 v4, -0x1

    move-object v5, v2

    move v2, v4

    :goto_0
    if-ge v2, v1, :cond_9

    if-gez v2, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    :goto_1
    iget-object v7, v5, Landroid/content/UriMatcher;->mChildren:Ljava/util/ArrayList;

    if-nez v7, :cond_2

    goto :goto_6

    :cond_2
    const/4 v5, 0x0

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x0

    move-object v10, v5

    move v5, v9

    :goto_2
    if-ge v5, v8, :cond_7

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/UriMatcher;

    iget v12, v11, Landroid/content/UriMatcher;->mWhich:I

    packed-switch v12, :pswitch_data_0

    goto :goto_4

    :pswitch_0
    move-object v10, v11

    goto :goto_4

    :pswitch_1
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    move v13, v9

    :goto_3
    if-ge v13, v12, :cond_4

    invoke-virtual {v6, v13}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x30

    if-lt v14, v15, :cond_5

    const/16 v15, 0x39

    if-le v14, v15, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_4
    move-object v10, v11

    goto :goto_4

    :pswitch_2
    iget-object v12, v11, Landroid/content/UriMatcher;->mText:Ljava/lang/String;

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    move-object v10, v11

    :cond_5
    :goto_4
    if-eqz v10, :cond_6

    goto :goto_5

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_7
    :goto_5
    move-object v5, v10

    if-nez v5, :cond_8

    return v4

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_9
    :goto_6
    iget v2, v5, Landroid/content/UriMatcher;->mCode:I

    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
