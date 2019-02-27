.class Landroid/widget/ArrayAdapter$ArrayFilter;
.super Landroid/widget/Filter;
.source "ArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ArrayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ArrayFilter"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ArrayAdapter;


# direct methods
.method private constructor <init>(Landroid/widget/ArrayAdapter;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/ArrayAdapter$ArrayFilter;->this$0:Landroid/widget/ArrayAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ArrayAdapter;Landroid/widget/ArrayAdapter$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ArrayAdapter$ArrayFilter;-><init>(Landroid/widget/ArrayAdapter;)V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 14

    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    iget-object v1, p0, Landroid/widget/ArrayAdapter$ArrayFilter;->this$0:Landroid/widget/ArrayAdapter;

    invoke-static {v1}, Landroid/widget/ArrayAdapter;->access$100(Landroid/widget/ArrayAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/ArrayAdapter$ArrayFilter;->this$0:Landroid/widget/ArrayAdapter;

    invoke-static {v1}, Landroid/widget/ArrayAdapter;->access$200(Landroid/widget/ArrayAdapter;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/widget/ArrayAdapter$ArrayFilter;->this$0:Landroid/widget/ArrayAdapter;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/widget/ArrayAdapter$ArrayFilter;->this$0:Landroid/widget/ArrayAdapter;

    invoke-static {v4}, Landroid/widget/ArrayAdapter;->access$300(Landroid/widget/ArrayAdapter;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v2, v3}, Landroid/widget/ArrayAdapter;->access$102(Landroid/widget/ArrayAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :goto_0
    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_4

    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/ArrayAdapter$ArrayFilter;->this$0:Landroid/widget/ArrayAdapter;

    invoke-static {v2}, Landroid/widget/ArrayAdapter;->access$200(Landroid/widget/ArrayAdapter;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/widget/ArrayAdapter$ArrayFilter;->this$0:Landroid/widget/ArrayAdapter;

    invoke-static {v4}, Landroid/widget/ArrayAdapter;->access$100(Landroid/widget/ArrayAdapter;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    move v6, v5

    :goto_1
    if-ge v6, v2, :cond_5

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_2
    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    move v11, v5

    :goto_2
    if-ge v11, v10, :cond_4

    aget-object v12, v9, v11

    invoke-virtual {v12, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    iput-object v4, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    iput v5, v0, Landroid/widget/Filter$FilterResults;->count:I

    goto :goto_5

    :catchall_1
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    :cond_6
    :goto_4
    iget-object v1, p0, Landroid/widget/ArrayAdapter$ArrayFilter;->this$0:Landroid/widget/ArrayAdapter;

    invoke-static {v1}, Landroid/widget/ArrayAdapter;->access$200(Landroid/widget/ArrayAdapter;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_3
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/widget/ArrayAdapter$ArrayFilter;->this$0:Landroid/widget/ArrayAdapter;

    invoke-static {v3}, Landroid/widget/ArrayAdapter;->access$100(Landroid/widget/ArrayAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    iput-object v2, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, v0, Landroid/widget/Filter$FilterResults;->count:I

    nop

    :goto_5
    return-object v0

    :catchall_2
    move-exception v2

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v2
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2

    iget-object v0, p0, Landroid/widget/ArrayAdapter$ArrayFilter;->this$0:Landroid/widget/ArrayAdapter;

    iget-object v1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1}, Landroid/widget/ArrayAdapter;->access$302(Landroid/widget/ArrayAdapter;Ljava/util/List;)Ljava/util/List;

    iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/widget/ArrayAdapter$ArrayFilter;->this$0:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/ArrayAdapter$ArrayFilter;->this$0:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetInvalidated()V

    :goto_0
    return-void
.end method
