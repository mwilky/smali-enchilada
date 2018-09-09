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
    .param p2, "arg"    # Lcom/oneplus/server/MsgObjectArg;

    .line 82
    iput-object p1, p0, Lcom/oneplus/server/OIMCTest$checkSysInfo;->this$0:Lcom/oneplus/server/OIMCTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/4 p1, 0x0

    iput p1, p0, Lcom/oneplus/server/OIMCTest$checkSysInfo;->result:I

    .line 84
    iput-object p2, p0, Lcom/oneplus/server/OIMCTest$checkSysInfo;->arg:Lcom/oneplus/server/MsgObjectArg;

    .line 85
    return-void
.end method


# virtual methods
.method public getArg()Lcom/oneplus/server/MsgObjectArg;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/oneplus/server/OIMCTest$checkSysInfo;->arg:Lcom/oneplus/server/MsgObjectArg;

    return-object v0
.end method

.method public getResult()I
    .locals 1

    .line 95
    iget v0, p0, Lcom/oneplus/server/OIMCTest$checkSysInfo;->result:I

    return v0
.end method

.method public run()V
    .locals 0

    .line 88
    return-void
.end method

.method public setResult(I)V
    .locals 0
    .param p1, "result"    # I

    .line 99
    iput p1, p0, Lcom/oneplus/server/OIMCTest$checkSysInfo;->result:I

    .line 100
    return-void
.end method
