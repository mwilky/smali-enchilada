.class Lcom/google/tagmanager/PlatformMacro;
.super Lcom/google/tagmanager/FunctionCallImplementation;
.source "PlatformMacro.java"


# static fields
.field private static final ID:Ljava/lang/String;

.field private static final PLATFORM:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/analytics/containertag/common/FunctionType;->PLATFORM:Lcom/google/analytics/containertag/common/FunctionType;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/common/FunctionType;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/PlatformMacro;->ID:Ljava/lang/String;

    const-string v0, "Android"

    invoke-static {v0}, Lcom/google/tagmanager/Types;->objectToValue(Ljava/lang/Object;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/PlatformMacro;->PLATFORM:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    sget-object v0, Lcom/google/tagmanager/PlatformMacro;->ID:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/google/tagmanager/FunctionCallImplementation;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static getFunctionId()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/tagmanager/PlatformMacro;->ID:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public evaluate(Ljava/util/Map;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;",
            ">;)",
            "Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;"
        }
    .end annotation

    sget-object v0, Lcom/google/tagmanager/PlatformMacro;->PLATFORM:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    return-object v0
.end method

.method public isCacheable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
