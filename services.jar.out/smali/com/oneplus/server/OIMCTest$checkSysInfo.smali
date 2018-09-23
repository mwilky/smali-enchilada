.class Lcom/oneplus/server/OIMCTest$checkSysInfo;
.super Ljava/lang/Object;
.source "OIMCTest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/server/OIMCTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "checkSysInfo"
.end annotation


# instance fields
.field private arg:Lcom/oneplus/server/MsgObjectArg;

.field private result:I

.field final synthetic this$0:Lcom/oneplus/server/OIMCTest;


# direct methods
.method constructor <init>(Lcom/oneplus/server/OIMCTest;Lcom/oneplus/server/MsgObjectArg;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/server/OIMCTest$checkSysInfo;->this$0:Lcom/oneplus/server/OIMCTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/oneplus/server/OIMCTest$checkSysInfo;->result:I

    iput-object p2, p0, Lcom/oneplus/server/OIMCTest$checkSysInfo;->arg:Lcom/oneplus/server/MsgObjectArg;

    return-void
.end method


# virtual methods
.method public getArg()Lcom/oneplus/server/MsgObjectArg;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/server/OIMCTest$checkSysInfo;->arg:Lcom/oneplus/server/MsgObjectArg;

    return-object v0
.end method

.method public getResult()I
    .locals 1

    iget v0, p0, Lcom/oneplus/server/OIMCTest$checkSysInfo;->result:I

    return v0
.end method

.method public run()V
    .locals 0

    return-void
.end method

.method public setResult(I)V
    .locals 0

    iput p1, p0, Lcom/oneplus/server/OIMCTest$checkSysInfo;->result:I

    return-void
.end method
