.class public Lcom/oneplus/server/ModeManager;
.super Ljava/lang/Object;
.source "ModeManager.java"


# static fields
.field public static final MainUserMode:Ljava/lang/String; = "User0"

.field public static final SystemMode:Ljava/lang/String; = "SystemMode"

.field public static final SystemModes:[Ljava/lang/String;

.field public static final TestMode:Ljava/lang/String; = "TestMode"

.field public static final UserModePrefix:Ljava/lang/String; = "User"


# instance fields
.field private mCurrUserMode:Lcom/oneplus/server/SceneMode;

.field private mModesTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oneplus/server/SceneMode;",
            ">;"
        }
    .end annotation
.end field

.field private mSysModesSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private systemMode:Lcom/oneplus/server/SceneMode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SystemMode"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/server/ModeManager;->SystemModes:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/server/ModeManager;->systemMode:Lcom/oneplus/server/SceneMode;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/server/ModeManager;->mModesTable:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/server/ModeManager;->mSysModesSet:Ljava/util/HashSet;

    invoke-virtual {p0}, Lcom/oneplus/server/ModeManager;->initSystemModeList()V

    return-void
.end method


# virtual methods
.method public addMode(Lcom/oneplus/server/SceneMode;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/oneplus/server/SceneMode;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    iget-object v1, p0, Lcom/oneplus/server/ModeManager;->mModesTable:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/oneplus/server/SceneMode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oneplus/server/SceneMode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " existed!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    return v0

    :cond_2
    iget-object v0, p0, Lcom/oneplus/server/ModeManager;->mModesTable:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/oneplus/server/SceneMode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    return v0
.end method

.method public containMode(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/server/ModeManager;->mModesTable:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public dumpAllModes(Ljava/io/PrintWriter;)V
    .locals 4

    const-string v0, "Dumping all modes:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/server/ModeManager;->mModesTable:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/oneplus/server/ModeManager;->mModesTable:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/server/SceneMode;

    const-string v3, "  "

    invoke-virtual {v2, p1, v3}, Lcom/oneplus/server/SceneMode;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dumpCurrNonSysModes(Ljava/io/PrintWriter;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/oneplus/server/ModeManager;->mModesTable:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/server/SceneMode;

    invoke-virtual {v2}, Lcom/oneplus/server/SceneMode;->getStatus()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    invoke-virtual {p0, v2}, Lcom/oneplus/server/ModeManager;->isSystemMode(Lcom/oneplus/server/SceneMode;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/oneplus/server/SceneMode;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current entered non-System Modes:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public dumpCurrUserMode(Ljava/io/PrintWriter;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current user mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oneplus/server/ModeManager;->getCurrUserModeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getCurrUserModeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/server/ModeManager;->mCurrUserMode:Lcom/oneplus/server/SceneMode;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/server/ModeManager;->mCurrUserMode:Lcom/oneplus/server/SceneMode;

    invoke-virtual {v0}, Lcom/oneplus/server/SceneMode;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentSystemMode()Lcom/oneplus/server/SceneMode;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/server/ModeManager;->systemMode:Lcom/oneplus/server/SceneMode;

    return-object v0
.end method

.method public getEnteredModeCount()I
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/oneplus/server/ModeManager;->mModesTable:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/server/SceneMode;

    invoke-virtual {v2}, Lcom/oneplus/server/SceneMode;->getStatus()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    goto :goto_0

    :cond_1
    return v0
.end method

.method public getMode(Ljava/lang/String;)Lcom/oneplus/server/SceneMode;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/server/ModeManager;->mModesTable:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/server/SceneMode;

    return-object v0
.end method

.method getModeTable()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oneplus/server/SceneMode;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/oneplus/server/ModeManager;->mModesTable:Ljava/util/HashMap;

    return-object v0
.end method

.method initSystemModeList()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/server/ModeManager;->mSysModesSet:Ljava/util/HashSet;

    const-string v1, "SystemMode"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public isMainUserMode(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "User0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSystemMode(Lcom/oneplus/server/SceneMode;)Z
    .locals 2

    iget-object v0, p0, Lcom/oneplus/server/ModeManager;->mSysModesSet:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/oneplus/server/SceneMode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSystemMode(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/server/ModeManager;->mSysModesSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isTestMode(Lcom/oneplus/server/SceneMode;)Z
    .locals 1

    const-string v0, "TestMode"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isTestMode(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "TestMode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setCurrUserMode(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/oneplus/server/ModeManager;->getMode(Ljava/lang/String;)Lcom/oneplus/server/SceneMode;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/server/ModeManager;->mCurrUserMode:Lcom/oneplus/server/SceneMode;

    return-void
.end method

.method public setSystemMode(Lcom/oneplus/server/SceneMode;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/server/ModeManager;->systemMode:Lcom/oneplus/server/SceneMode;

    return-void
.end method
