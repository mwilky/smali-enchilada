.class public Landroid/widget/SimpleAdapter;
.super Landroid/widget/BaseAdapter;
.source "SimpleAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;
.implements Landroid/widget/ThemedSpinnerAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SimpleAdapter$SimpleFilter;,
        Landroid/widget/SimpleAdapter$ViewBinder;
    }
.end annotation


# instance fields
.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;>;"
        }
    .end annotation
.end field

.field private mDropDownInflater:Landroid/view/LayoutInflater;

.field private mDropDownResource:I

.field private mFilter:Landroid/widget/SimpleAdapter$SimpleFilter;

.field private mFrom:[Ljava/lang/String;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mResource:I

.field private mTo:[I

.field private mUnfilteredData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;>;"
        }
    .end annotation
.end field

.field private mViewBinder:Landroid/widget/SimpleAdapter$ViewBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;>;I[",
            "Ljava/lang/String;",
            "[I)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Landroid/widget/SimpleAdapter;->mData:Ljava/util/List;

    iput p3, p0, Landroid/widget/SimpleAdapter;->mDropDownResource:I

    iput p3, p0, Landroid/widget/SimpleAdapter;->mResource:I

    iput-object p4, p0, Landroid/widget/SimpleAdapter;->mFrom:[Ljava/lang/String;

    iput-object p5, p0, Landroid/widget/SimpleAdapter;->mTo:[I

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Landroid/widget/SimpleAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic access$100(Landroid/widget/SimpleAdapter;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Landroid/widget/SimpleAdapter;->mUnfilteredData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$102(Landroid/widget/SimpleAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Landroid/widget/SimpleAdapter;->mUnfilteredData:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$200(Landroid/widget/SimpleAdapter;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Landroid/widget/SimpleAdapter;->mData:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$202(Landroid/widget/SimpleAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Landroid/widget/SimpleAdapter;->mData:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$300(Landroid/widget/SimpleAdapter;)[I
    .locals 1

    iget-object v0, p0, Landroid/widget/SimpleAdapter;->mTo:[I

    return-object v0
.end method

.method static synthetic access$400(Landroid/widget/SimpleAdapter;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/widget/SimpleAdapter;->mFrom:[Ljava/lang/String;

    return-object v0
.end method

.method private bindView(ILandroid/view/View;)V
    .locals 13

    iget-object v0, p0, Landroid/widget/SimpleAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Landroid/widget/SimpleAdapter;->mViewBinder:Landroid/widget/SimpleAdapter$ViewBinder;

    iget-object v2, p0, Landroid/widget/SimpleAdapter;->mFrom:[Ljava/lang/String;

    iget-object v3, p0, Landroid/widget/SimpleAdapter;->mTo:[I

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_c

    aget v6, v3, v5

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_b

    aget-object v7, v2, v5

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_1

    const-string v8, ""

    goto :goto_1

    :cond_1
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_1
    if-nez v8, :cond_2

    const-string v8, ""

    :cond_2
    const/4 v9, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v1, v6, v7, v8}, Landroid/widget/SimpleAdapter$ViewBinder;->setViewValue(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v9

    :cond_3
    if-nez v9, :cond_b

    instance-of v10, v6, Landroid/widget/Checkable;

    if-eqz v10, :cond_7

    instance-of v10, v7, Ljava/lang/Boolean;

    if-eqz v10, :cond_4

    move-object v10, v6

    check-cast v10, Landroid/widget/Checkable;

    move-object v11, v7

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    invoke-interface {v10, v11}, Landroid/widget/Checkable;->setChecked(Z)V

    goto/16 :goto_3

    :cond_4
    instance-of v10, v6, Landroid/widget/TextView;

    if-eqz v10, :cond_5

    move-object v10, v6

    check-cast v10, Landroid/widget/TextView;

    invoke-virtual {p0, v10, v8}, Landroid/widget/SimpleAdapter;->setViewText(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_5
    new-instance v10, Ljava/lang/IllegalStateException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " should be bound to a Boolean, not a "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v7, :cond_6

    const-string v12, "<unknown type>"

    goto :goto_2

    :cond_6
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    :goto_2
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_7
    instance-of v10, v6, Landroid/widget/TextView;

    if-eqz v10, :cond_8

    move-object v10, v6

    check-cast v10, Landroid/widget/TextView;

    invoke-virtual {p0, v10, v8}, Landroid/widget/SimpleAdapter;->setViewText(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    instance-of v10, v6, Landroid/widget/ImageView;

    if-eqz v10, :cond_a

    instance-of v10, v7, Ljava/lang/Integer;

    if-eqz v10, :cond_9

    move-object v10, v6

    check-cast v10, Landroid/widget/ImageView;

    move-object v11, v7

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {p0, v10, v11}, Landroid/widget/SimpleAdapter;->setViewImage(Landroid/widget/ImageView;I)V

    goto :goto_3

    :cond_9
    move-object v10, v6

    check-cast v10, Landroid/widget/ImageView;

    invoke-virtual {p0, v10, v8}, Landroid/widget/SimpleAdapter;->setViewImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_3

    :cond_a
    new-instance v10, Ljava/lang/IllegalStateException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " is not a  view that can be bounds by this SimpleAdapter"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_b
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_c
    return-void
.end method

.method private createViewFromResource(Landroid/view/LayoutInflater;ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 1

    if-nez p3, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, p5, p4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p3

    :goto_0
    invoke-direct {p0, p2, v0}, Landroid/widget/SimpleAdapter;->bindView(ILandroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Landroid/widget/SimpleAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    iget-object v0, p0, Landroid/widget/SimpleAdapter;->mDropDownInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/SimpleAdapter;->mInflater:Landroid/view/LayoutInflater;

    :goto_0
    move-object v2, v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroid/widget/SimpleAdapter;->mDropDownInflater:Landroid/view/LayoutInflater;

    goto :goto_0

    :goto_1
    iget v6, p0, Landroid/widget/SimpleAdapter;->mDropDownResource:I

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Landroid/widget/SimpleAdapter;->createViewFromResource(Landroid/view/LayoutInflater;ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getDropDownViewTheme()Landroid/content/res/Resources$Theme;
    .locals 1

    iget-object v0, p0, Landroid/widget/SimpleAdapter;->mDropDownInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/SimpleAdapter;->mDropDownInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 2

    iget-object v0, p0, Landroid/widget/SimpleAdapter;->mFilter:Landroid/widget/SimpleAdapter$SimpleFilter;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/SimpleAdapter$SimpleFilter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/SimpleAdapter$SimpleFilter;-><init>(Landroid/widget/SimpleAdapter;Landroid/widget/SimpleAdapter$1;)V

    iput-object v0, p0, Landroid/widget/SimpleAdapter;->mFilter:Landroid/widget/SimpleAdapter$SimpleFilter;

    :cond_0
    iget-object v0, p0, Landroid/widget/SimpleAdapter;->mFilter:Landroid/widget/SimpleAdapter$SimpleFilter;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/widget/SimpleAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    iget-object v1, p0, Landroid/widget/SimpleAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v5, p0, Landroid/widget/SimpleAdapter;->mResource:I

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;->createViewFromResource(Landroid/view/LayoutInflater;ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewBinder()Landroid/widget/SimpleAdapter$ViewBinder;
    .locals 1

    iget-object v0, p0, Landroid/widget/SimpleAdapter;->mViewBinder:Landroid/widget/SimpleAdapter$ViewBinder;

    return-object v0
.end method

.method public setDropDownViewResource(I)V
    .locals 0

    iput p1, p0, Landroid/widget/SimpleAdapter;->mDropDownResource:I

    return-void
.end method

.method public setDropDownViewTheme(Landroid/content/res/Resources$Theme;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/SimpleAdapter;->mDropDownInflater:Landroid/view/LayoutInflater;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/SimpleAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Landroid/widget/SimpleAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object v0, p0, Landroid/widget/SimpleAdapter;->mDropDownInflater:Landroid/view/LayoutInflater;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Landroid/widget/SimpleAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/SimpleAdapter;->mDropDownInflater:Landroid/view/LayoutInflater;

    :goto_0
    return-void
.end method

.method public setViewBinder(Landroid/widget/SimpleAdapter$ViewBinder;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/SimpleAdapter;->mViewBinder:Landroid/widget/SimpleAdapter$ViewBinder;

    return-void
.end method

.method public setViewImage(Landroid/widget/ImageView;I)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setViewImage(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    :goto_0
    return-void
.end method

.method public setViewText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
