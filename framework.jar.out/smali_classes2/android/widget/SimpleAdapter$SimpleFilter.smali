.class Landroid/widget/SimpleAdapter$SimpleFilter;
.super Landroid/widget/Filter;
.source "SimpleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SimpleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleFilter"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/SimpleAdapter;


# direct methods
.method private constructor <init>(Landroid/widget/SimpleAdapter;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/SimpleAdapter$SimpleFilter;->this$0:Landroid/widget/SimpleAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/SimpleAdapter;Landroid/widget/SimpleAdapter$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/SimpleAdapter$SimpleFilter;-><init>(Landroid/widget/SimpleAdapter;)V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 17

    move-object/from16 v0, p0

    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    iget-object v2, v0, Landroid/widget/SimpleAdapter$SimpleFilter;->this$0:Landroid/widget/SimpleAdapter;

    invoke-static {v2}, Landroid/widget/SimpleAdapter;->access$100(Landroid/widget/SimpleAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, v0, Landroid/widget/SimpleAdapter$SimpleFilter;->this$0:Landroid/widget/SimpleAdapter;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, v0, Landroid/widget/SimpleAdapter$SimpleFilter;->this$0:Landroid/widget/SimpleAdapter;

    invoke-static {v4}, Landroid/widget/SimpleAdapter;->access$200(Landroid/widget/SimpleAdapter;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v2, v3}, Landroid/widget/SimpleAdapter;->access$102(Landroid/widget/SimpleAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    :cond_0
    if-eqz p1, :cond_6

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_4

    :cond_1
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Landroid/widget/SimpleAdapter$SimpleFilter;->this$0:Landroid/widget/SimpleAdapter;

    invoke-static {v4}, Landroid/widget/SimpleAdapter;->access$100(Landroid/widget/SimpleAdapter;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v5, :cond_5

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    if-eqz v9, :cond_4

    iget-object v10, v0, Landroid/widget/SimpleAdapter$SimpleFilter;->this$0:Landroid/widget/SimpleAdapter;

    invoke-static {v10}, Landroid/widget/SimpleAdapter;->access$300(Landroid/widget/SimpleAdapter;)[I

    move-result-object v10

    array-length v10, v10

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v10, :cond_4

    iget-object v12, v0, Landroid/widget/SimpleAdapter$SimpleFilter;->this$0:Landroid/widget/SimpleAdapter;

    invoke-static {v12}, Landroid/widget/SimpleAdapter;->access$400(Landroid/widget/SimpleAdapter;)[Ljava/lang/String;

    move-result-object v12

    aget-object v12, v12, v11

    invoke-interface {v9, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    array-length v14, v13

    const/4 v15, 0x0

    :goto_2
    if-ge v15, v14, :cond_3

    aget-object v7, v13, v15

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_5
    iput-object v6, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, v1, Landroid/widget/Filter$FilterResults;->count:I

    goto :goto_5

    :cond_6
    :goto_4
    iget-object v2, v0, Landroid/widget/SimpleAdapter$SimpleFilter;->this$0:Landroid/widget/SimpleAdapter;

    invoke-static {v2}, Landroid/widget/SimpleAdapter;->access$100(Landroid/widget/SimpleAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, v1, Landroid/widget/Filter$FilterResults;->count:I

    nop

    :goto_5
    return-object v1
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2

    iget-object v0, p0, Landroid/widget/SimpleAdapter$SimpleFilter;->this$0:Landroid/widget/SimpleAdapter;

    iget-object v1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1}, Landroid/widget/SimpleAdapter;->access$202(Landroid/widget/SimpleAdapter;Ljava/util/List;)Ljava/util/List;

    iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/widget/SimpleAdapter$SimpleFilter;->this$0:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/SimpleAdapter$SimpleFilter;->this$0:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0}, Landroid/widget/SimpleAdapter;->notifyDataSetInvalidated()V

    :goto_0
    return-void
.end method
