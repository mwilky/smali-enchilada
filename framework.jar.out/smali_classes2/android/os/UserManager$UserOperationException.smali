.class public Landroid/os/UserManager$UserOperationException;
.super Ljava/lang/RuntimeException;
.source "UserManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/UserManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserOperationException"
.end annotation


# instance fields
.field private final mUserOperationResult:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput p2, p0, Landroid/os/UserManager$UserOperationException;->mUserOperationResult:I

    return-void
.end method


# virtual methods
.method public getUserOperationResult()I
    .locals 1

    iget v0, p0, Landroid/os/UserManager$UserOperationException;->mUserOperationResult:I

    return v0
.end method
