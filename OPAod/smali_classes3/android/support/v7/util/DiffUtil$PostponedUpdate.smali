.class Landroid/support/v7/util/DiffUtil$PostponedUpdate;
.super Ljava/lang/Object;
.source "DiffUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/util/DiffUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PostponedUpdate"
.end annotation


# instance fields
.field currentPos:I

.field posInOwnerList:I

.field removal:Z


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0
    .param p1, "posInOwnerList"    # I
    .param p2, "currentPos"    # I
    .param p3, "removal"    # Z

    .line 912
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 913
    iput p1, p0, Landroid/support/v7/util/DiffUtil$PostponedUpdate;->posInOwnerList:I

    .line 914
    iput p2, p0, Landroid/support/v7/util/DiffUtil$PostponedUpdate;->currentPos:I

    .line 915
    iput-boolean p3, p0, Landroid/support/v7/util/DiffUtil$PostponedUpdate;->removal:Z

    .line 916
    return-void
.end method
