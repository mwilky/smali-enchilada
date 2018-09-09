.class Lcom/oneplus/server/OIMCTest$testFuncChange;
.super Ljava/lang/Object;
.source "OIMCTest.java"

# interfaces
.implements Lcom/oneplus/oimc/IOPFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/server/OIMCTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "testFuncChange"
.end annotation


# instance fields
.field private configObj:Ljava/lang/Object;

.field private newConfigVal:I

.field private newStartVal:I

.field private newStopVal:I

.field private oldConfigVal:I

.field private oldStartVal:I

.field private oldStopVal:I

.field private startConfig:Ljava/lang/String;

.field private stopConfig:Ljava/lang/String;

.field final synthetic this$0:Lcom/oneplus/server/OIMCTest;


# direct methods
.method constructor <init>(Lcom/oneplus/server/OIMCTest;)V
    .locals 1
    .param p1, "this$0"    # Lcom/oneplus/server/OIMCTest;

    .line 302
    iput-object p1, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->this$0:Lcom/oneplus/server/OIMCTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 303
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->oldStartVal:I

    .line 304
    iput v0, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->newStartVal:I

    .line 305
    iput v0, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->oldStopVal:I

    .line 306
    iput v0, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->newStopVal:I

    .line 307
    iput v0, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->oldConfigVal:I

    .line 308
    iput v0, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->newConfigVal:I

    .line 309
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->configObj:Ljava/lang/Object;

    .line 310
    iput-object v0, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->startConfig:Ljava/lang/String;

    .line 311
    iput-object v0, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->stopConfig:Ljava/lang/String;

    .line 312
    return-void
.end method


# virtual methods
.method public checkConfigStatus(ILjava/lang/Object;)Z
    .locals 2
    .param p1, "change"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .line 322
    iget v0, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->newConfigVal:I

    iget v1, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->oldConfigVal:I

    add-int/2addr v1, p1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->configObj:Ljava/lang/Object;

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public checkStartConfig(Ljava/lang/String;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/String;

    .line 327
    iget-object v0, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->startConfig:Ljava/lang/String;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    .line 328
    const/4 v0, 0x1

    return v0

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->startConfig:Ljava/lang/String;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 330
    iget-object v0, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->startConfig:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 332
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public checkStatus(III)Z
    .locals 2
    .param p1, "startChange"    # I
    .param p2, "stopChange"    # I
    .param p3, "configChange"    # I

    .line 315
    iget v0, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->newStartVal:I

    iget v1, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->oldStartVal:I

    add-int/2addr v1, p1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->newStopVal:I

    iget v1, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->oldStopVal:I

    add-int/2addr v1, p2

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->newConfigVal:I

    iget v1, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->oldConfigVal:I

    add-int/2addr v1, p3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public checkStopConfig(Ljava/lang/String;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/String;

    .line 336
    iget-object v0, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->stopConfig:Ljava/lang/String;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    .line 337
    const/4 v0, 0x1

    return v0

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->stopConfig:Ljava/lang/String;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 339
    iget-object v0, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->stopConfig:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 341
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public config(Ljava/lang/Object;)I
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 369
    iget v0, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->newConfigVal:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->newConfigVal:I

    .line 370
    iput-object p1, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->configObj:Ljava/lang/Object;

    .line 371
    const/4 v0, 0x0

    return v0
.end method

.method public start(Ljava/lang/Object;)I
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 355
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->startConfig:Ljava/lang/String;

    .line 356
    iget v0, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->newStartVal:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->newStartVal:I

    .line 357
    const/4 v0, 0x0

    return v0
.end method

.method public stop(Ljava/lang/Object;)I
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 362
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->stopConfig:Ljava/lang/String;

    .line 363
    iget v0, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->newStopVal:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->newStopVal:I

    .line 364
    const/4 v0, 0x0

    return v0
.end method

.method public syncStatus()V
    .locals 1

    .line 345
    iget v0, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->newConfigVal:I

    iput v0, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->oldConfigVal:I

    .line 346
    iget v0, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->newStartVal:I

    iput v0, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->oldStartVal:I

    .line 347
    iget v0, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->newStopVal:I

    iput v0, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->oldStopVal:I

    .line 348
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->configObj:Ljava/lang/Object;

    .line 349
    iput-object v0, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->startConfig:Ljava/lang/String;

    .line 350
    iput-object v0, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->stopConfig:Ljava/lang/String;

    .line 351
    return-void
.end method
