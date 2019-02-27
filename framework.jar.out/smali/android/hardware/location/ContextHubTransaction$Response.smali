.class public Landroid/hardware/location/ContextHubTransaction$Response;
.super Ljava/lang/Object;
.source "ContextHubTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/ContextHubTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Response"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mContents:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field private mResult:I


# direct methods
.method constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITR;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/hardware/location/ContextHubTransaction$Response;->mResult:I

    iput-object p2, p0, Landroid/hardware/location/ContextHubTransaction$Response;->mContents:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getContents()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/location/ContextHubTransaction$Response;->mContents:Ljava/lang/Object;

    return-object v0
.end method

.method public getResult()I
    .locals 1

    iget v0, p0, Landroid/hardware/location/ContextHubTransaction$Response;->mResult:I

    return v0
.end method
