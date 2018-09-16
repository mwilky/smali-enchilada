.class Lcom/android/server/am/ActivityManagerService$ItemMatcher;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ItemMatcher"
.end annotation


# instance fields
.field all:Z

.field components:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field objects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field strings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 19554
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19555
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->all:Z

    .line 19556
    return-void
.end method


# virtual methods
.method build([Ljava/lang/String;I)I
    .locals 2
    .param p1, "args"    # [Ljava/lang/String;
    .param p2, "opti"    # I

    .line 19588
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_1

    .line 19589
    aget-object v0, p1, p2

    .line 19590
    .local v0, "name":Ljava/lang/String;
    const-string v1, "--"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 19591
    add-int/lit8 v1, p2, 0x1

    return v1

    .line 19593
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->build(Ljava/lang/String;)V

    .line 19588
    .end local v0    # "name":Ljava/lang/String;
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 19595
    :cond_1
    return p2
.end method

.method build(Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .line 19559
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 19560
    .local v0, "componentName":Landroid/content/ComponentName;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 19561
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->components:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 19562
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->components:Ljava/util/ArrayList;

    .line 19564
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->components:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19565
    iput-boolean v1, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->all:Z

    goto :goto_0

    .line 19567
    :cond_1
    move v2, v1

    .line 19570
    .local v2, "objectId":I
    const/16 v3, 0x10

    :try_start_0
    invoke-static {p1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    move v2, v3

    .line 19571
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->objects:Ljava/util/ArrayList;

    if-nez v3, :cond_2

    .line 19572
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->objects:Ljava/util/ArrayList;

    .line 19574
    :cond_2
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->objects:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19575
    iput-boolean v1, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->all:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19583
    goto :goto_0

    .line 19576
    :catch_0
    move-exception v3

    .line 19578
    .local v3, "e":Ljava/lang/RuntimeException;
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->strings:Ljava/util/ArrayList;

    if-nez v4, :cond_3

    .line 19579
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->strings:Ljava/util/ArrayList;

    .line 19581
    :cond_3
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->strings:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19582
    iput-boolean v1, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->all:Z

    .line 19585
    .end local v2    # "objectId":I
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method

.method match(Ljava/lang/Object;Landroid/content/ComponentName;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "comp"    # Landroid/content/ComponentName;

    .line 19599
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->all:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 19600
    return v1

    .line 19602
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->components:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 19603
    move v0, v2

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->components:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 19604
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->components:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    invoke-virtual {v3, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 19605
    return v1

    .line 19603
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 19609
    .end local v0    # "i":I
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->objects:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 19610
    move v0, v2

    .restart local v0    # "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->objects:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 19611
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->objects:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_3

    .line 19612
    return v1

    .line 19610
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 19616
    .end local v0    # "i":I
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->strings:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    .line 19617
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    .line 19618
    .local v0, "flat":Ljava/lang/String;
    move v3, v2

    .local v3, "i":I
    :goto_2
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->strings:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 19619
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->strings:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 19620
    return v1

    .line 19618
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 19624
    .end local v0    # "flat":Ljava/lang/String;
    .end local v3    # "i":I
    :cond_6
    return v2
.end method
