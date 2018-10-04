.class public final enum Lcom/oneplus/customization/CustomizationSettings$CUSTOM_TYPE;
.super Ljava/lang/Enum;
.source "CustomizationSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/customization/CustomizationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CUSTOM_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oneplus/customization/CustomizationSettings$CUSTOM_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/customization/CustomizationSettings$CUSTOM_TYPE;

.field public static final enum AVG:Lcom/oneplus/customization/CustomizationSettings$CUSTOM_TYPE;

.field public static final enum JCC:Lcom/oneplus/customization/CustomizationSettings$CUSTOM_TYPE;

.field public static final enum NONE:Lcom/oneplus/customization/CustomizationSettings$CUSTOM_TYPE;

.field public static final enum SW:Lcom/oneplus/customization/CustomizationSettings$CUSTOM_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/oneplus/customization/CustomizationSettings$CUSTOM_TYPE;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oneplus/customization/CustomizationSettings$CUSTOM_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/customization/CustomizationSettings$CUSTOM_TYPE;->NONE:Lcom/oneplus/customization/CustomizationSettings$CUSTOM_TYPE;

    new-instance v0, Lcom/oneplus/customization/CustomizationSettings$CUSTOM_TYPE;

    const-string v1, "JCC"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/oneplus/customization/CustomizationSettings$CUSTOM_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/customization/CustomizationSettings$CUSTOM_TYPE;->JCC:Lcom/oneplus/customization/CustomizationSettings$CUSTOM_TYPE;

    new-instance v0, Lcom/oneplus/customization/CustomizationSettings$CUSTOM_TYPE;

    const-string v1, "SW"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/oneplus/customization/CustomizationSettings$CUSTOM_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/customization/CustomizationSettings$CUSTOM_TYPE;->SW:Lcom/oneplus/customization/CustomizationSettings$CUSTOM_TYPE;

    new-instance v0, Lcom/oneplus/customization/CustomizationSettings$CUSTOM_TYPE;

    const-string v1, "AVG"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/oneplus/customization/CustomizationSettings$CUSTOM_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/customization/CustomizationSettings$CUSTOM_TYPE;->AVG:Lcom/oneplus/customization/CustomizationSettings$CUSTOM_TYPE;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/oneplus/customization/CustomizationSettings$CUSTOM_TYPE;

    sget-object v1, Lcom/oneplus/customization/CustomizationSettings$CUSTOM_TYPE;->NONE:Lcom/oneplus/customization/CustomizationSettings$CUSTOM_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/customization/CustomizationSettings$CUSTOM_TYPE;->JCC:Lcom/oneplus/customization/CustomizationSettings$CUSTOM_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/customization/CustomizationSettings$CUSTOM_TYPE;->SW:Lcom/oneplus/customization/CustomizationSettings$CUSTOM_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oneplus/customization/CustomizationSettings$CUSTOM_TYPE;->AVG:Lcom/oneplus/customization/CustomizationSettings$CUSTOM_TYPE;

    aput-object v1, v0, v5

    sput-object v0, Lcom/oneplus/customization/CustomizationSettings$CUSTOM_TYPE;->$VALUES:[Lcom/oneplus/customization/CustomizationSettings$CUSTOM_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/customization/CustomizationSettings$CUSTOM_TYPE;
    .locals 1

    const-class v0, Lcom/oneplus/customization/CustomizationSettings$CUSTOM_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/customization/CustomizationSettings$CUSTOM_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/customization/CustomizationSettings$CUSTOM_TYPE;
    .locals 1

    sget-object v0, Lcom/oneplus/customization/CustomizationSettings$CUSTOM_TYPE;->$VALUES:[Lcom/oneplus/customization/CustomizationSettings$CUSTOM_TYPE;

    invoke-virtual {v0}, [Lcom/oneplus/customization/CustomizationSettings$CUSTOM_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/customization/CustomizationSettings$CUSTOM_TYPE;

    return-object v0
.end method
