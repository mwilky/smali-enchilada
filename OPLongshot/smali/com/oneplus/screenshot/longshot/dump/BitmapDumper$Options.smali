.class public final enum Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;
.super Ljava/lang/Enum;
.source "BitmapDumper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Options"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

.field public static final enum DIVIDE:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

.field public static final enum FILE:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

.field public static final enum FULL:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

.field public static final enum LAST:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

.field public static final enum NEXT:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

.field public static final enum ONE:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

.field public static final enum OVER:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

.field public static final enum PREV:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;


# instance fields
.field private mValue:Z


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

    const-string v1, "FULL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->FULL:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

    new-instance v0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

    const-string v1, "LAST"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->LAST:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

    new-instance v0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

    const-string v1, "NEXT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v2}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->NEXT:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

    new-instance v0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

    const-string v1, "OVER"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v2}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->OVER:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

    new-instance v0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

    const-string v1, "ONE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v2}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->ONE:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

    new-instance v0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

    const-string v1, "PREV"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v2}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->PREV:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

    new-instance v0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

    const-string v1, "FILE"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v3}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->FILE:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

    new-instance v0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

    const-string v1, "DIVIDE"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v2}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->DIVIDE:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

    sget-object v1, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->FULL:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->LAST:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->NEXT:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->OVER:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->ONE:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->PREV:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

    aput-object v1, v0, v7

    sget-object v1, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->FILE:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

    aput-object v1, v0, v8

    sget-object v1, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->DIVIDE:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

    aput-object v1, v0, v9

    sput-object v0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->$VALUES:[Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->mValue:Z

    iput-boolean p3, p0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->mValue:Z

    return-void
.end method

.method static synthetic access$002(Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->mValue:Z

    return p1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;
    .locals 1

    const-class v0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;
    .locals 1

    sget-object v0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->$VALUES:[Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

    invoke-virtual {v0}, [Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

    return-object v0
.end method


# virtual methods
.method public getValue()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->mValue:Z

    return v0
.end method
