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

    .line 28
    const-string v0, "SystemMode"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/server/ModeManager;->SystemModes:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/server/ModeManager;->systemMode:Lcom/oneplus/server/SceneMode;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/server/ModeManager;->mModesTable:Ljava/util/HashMap;

    .line 41
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/server/ModeManager;->mSysModesSet:Ljava/util/HashSet;

    .line 43
    invoke-virtual {p0}, Lcom/oneplus/server/ModeManager;->initSystemModeList()V

    .line 44
    return-void
.end method


# virtual methods
.method public addMode(Lcom/oneplus/server/SceneMode;)Z
    .locals 3
    .param p1, "mode"    # Lcom/oneplus/server/SceneMode;

    .line 69
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 70
    return v0

    .line 72
    :cond_0
    invoke-virtual {p1}, Lcom/oneplus/server/SceneMode;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    return v0

    .line 75
    :cond_1
    iget-object v1, p0, Lcom/oneplus/server/ModeManager;->mModesTable:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/oneplus/server/SceneMode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 76
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

    .line 77
    return v0

    .line 80
    :cond_2
    iget-object v0, p0, Lcom/oneplus/server/ModeManager;->mModesTable:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/oneplus/server/SceneMode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const/4 v0, 0x1

    return v0
.end method

.method public containMode(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 124
    iget-object v0, p0, Lcom/oneplus/server/ModeManager;->mModesTable:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public dumpAllModes(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 128
    const-string v0, "Dumping all modes:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 129
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

    .line 130
    .local v1, "name":Ljava/lang/String;
    iget-object v2, p0, Lcom/oneplus/server/ModeManager;->mModesTable:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/server/SceneMode;

    const-string v3, "  "

    invoke-virtual {v2, p1, v3}, Lcom/oneplus/server/SceneMode;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 131
    .end local v1    # "name":Ljava/lang/String;
    goto :goto_0

    .line 132
    :cond_0
    return-void
.end method

.method public dumpCurrNonSysModes(Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .local v0, "sb":Ljava/lang/StringBuilder;
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

    .line 137
    .local v2, "mode":Lcom/oneplus/server/SceneMode;
    invoke-virtual {v2}, Lcom/oneplus/server/SceneMode;->getStatus()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 138
    invoke-virtual {p0, v2}, Lcom/oneplus/server/ModeManager;->isSystemMode(Lcom/oneplus/server/SceneMode;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 139
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

    .line 140
    .end local v2    # "mode":Lcom/oneplus/server/SceneMode;
    :cond_0
    goto :goto_0

    .line 141
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

    .line 142
    return-void
.end method

.method public dumpCurrUserMode(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 145
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

    .line 146
    return-void
.end method

.method public getCurrUserModeName()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/oneplus/server/ModeManager;->mCurrUserMode:Lcom/oneplus/server/SceneMode;

    if-nez v0, :cond_0

    .line 94
    const/4 v0, 0x0

    return-object v0

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/oneplus/server/ModeManager;->mCurrUserMode:Lcom/oneplus/server/SceneMode;

    invoke-virtual {v0}, Lcom/oneplus/server/SceneMode;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentSystemMode()Lcom/oneplus/server/SceneMode;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/oneplus/server/ModeManager;->systemMode:Lcom/oneplus/server/SceneMode;

    return-object v0
.end method

.method public getEnteredModeCount()I
    .locals 5

    .line 51
    const/4 v0, 0x0

    .line 52
    .local v0, "count":I
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

    .line 53
    .local v2, "mode":Lcom/oneplus/server/SceneMode;
    invoke-virtual {v2}, Lcom/oneplus/server/SceneMode;->getStatus()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 54
    add-int/lit8 v0, v0, 0x1

    .line 55
    .end local v2    # "mode":Lcom/oneplus/server/SceneMode;
    :cond_0
    goto :goto_0

    .line 56
    :cond_1
    return v0
.end method

.method public getMode(Ljava/lang/String;)Lcom/oneplus/server/SceneMode;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 60
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

    .line 65
    iget-object v0, p0, Lcom/oneplus/server/ModeManager;->mModesTable:Ljava/util/HashMap;

    return-object v0
.end method

.method initSystemModeList()V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/oneplus/server/ModeManager;->mSysModesSet:Ljava/util/HashSet;

    const-string v1, "SystemMode"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 48
    return-void
.end method

.method public isMainUserMode(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 104
    const-string v0, "User0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSystemMode(Lcom/oneplus/server/SceneMode;)Z
    .locals 2
    .param p1, "mode"    # Lcom/oneplus/server/SceneMode;

    .line 112
    iget-object v0, p0, Lcom/oneplus/server/ModeManager;->mSysModesSet:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/oneplus/server/SceneMode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSystemMode(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 100
    iget-object v0, p0, Lcom/oneplus/server/ModeManager;->mSysModesSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isTestMode(Lcom/oneplus/server/SceneMode;)Z
    .locals 1
    .param p1, "mode"    # Lcom/oneplus/server/SceneMode;

    .line 116
    const-string v0, "TestMode"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isTestMode(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 108
    const-string v0, "TestMode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setCurrUserMode(Ljava/lang/String;)V
    .locals 1
    .param p1, "currUserMode"    # Ljava/lang/String;

    .line 89
    invoke-virtual {p0, p1}, Lcom/oneplus/server/ModeManager;->getMode(Ljava/lang/String;)Lcom/oneplus/server/SceneMode;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/server/ModeManager;->mCurrUserMode:Lcom/oneplus/server/SceneMode;

    .line 90
    return-void
.end method

.method public setSystemMode(Lcom/oneplus/server/SceneMode;)V
    .locals 0
    .param p1, "mode"    # Lcom/oneplus/server/SceneMode;

    .line 120
    iput-object p1, p0, Lcom/oneplus/server/ModeManager;->systemMode:Lcom/oneplus/server/SceneMode;

    .line 121
    return-void
.end method
