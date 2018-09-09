.class Lcom/android/server/am/Connor$7;
.super Ljava/lang/Object;
.source "Connor.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/Connor;->removeFilesEndsWith(Ljava/lang/String;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/Connor;

.field final synthetic val$params:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/am/Connor;[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/Connor;

    .line 472
    iput-object p1, p0, Lcom/android/server/am/Connor$7;->this$0:Lcom/android/server/am/Connor;

    iput-object p2, p0, Lcom/android/server/am/Connor$7;->val$params:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 6
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;

    .line 474
    iget-object v0, p0, Lcom/android/server/am/Connor$7;->val$params:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 475
    .local v4, "filePostFix":Ljava/lang/String;
    invoke-virtual {p2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v0, 0x1

    return v0

    .line 474
    .end local v4    # "filePostFix":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 477
    :cond_1
    return v2
.end method
