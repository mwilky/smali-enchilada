.class final enum Lcom/oneplus/injector/ViewInjector$View$Element;
.super Ljava/lang/Enum;
.source "ViewInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/injector/ViewInjector$View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Element"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oneplus/injector/ViewInjector$View$Element;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/injector/ViewInjector$View$Element;

.field public static final enum BROWSEROVERSCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

.field public static final enum BROWSERSCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

.field public static final enum CONTENTSCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

.field public static final enum LISTOVERSCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

.field public static final enum MMAWAKEN12:Lcom/oneplus/injector/ViewInjector$View$Element;

.field public static final enum MMAWAKEN14:Lcom/oneplus/injector/ViewInjector$View$Element;

.field public static final enum MMAWAKEN15:Lcom/oneplus/injector/ViewInjector$View$Element;

.field public static final enum MMCHANGE12:Lcom/oneplus/injector/ViewInjector$View$Element;

.field public static final enum MMCHANGE14:Lcom/oneplus/injector/ViewInjector$View$Element;

.field public static final enum MMCHANGE15:Lcom/oneplus/injector/ViewInjector$View$Element;

.field public static final enum MMCHANGE9:Lcom/oneplus/injector/ViewInjector$View$Element;

.field public static final enum OVERSCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

.field public static final enum QQSCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

.field public static final enum QZONESCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

.field public static final enum SCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

.field public static final enum WEBOVERSCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

.field public static final enum WEBSCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;


# instance fields
.field private mName:Ljava/lang/String;

.field private mPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    new-instance v0, Lcom/oneplus/injector/ViewInjector$View$Element;

    const-string v1, "SCROLL"

    const-string v2, "AbsListView.trackMotionScroll"

    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/oneplus/injector/ViewInjector$View$Element;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/oneplus/injector/ViewInjector$View$Element;->SCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

    new-instance v0, Lcom/oneplus/injector/ViewInjector$View$Element;

    const-string v1, "QQSCROLL"

    const-string v2, "tencent.widget.AbsListView.onTouchEvent"

    const/4 v5, 0x1

    const/4 v6, 0x7

    invoke-direct {v0, v1, v5, v6, v2}, Lcom/oneplus/injector/ViewInjector$View$Element;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/oneplus/injector/ViewInjector$View$Element;->QQSCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

    new-instance v0, Lcom/oneplus/injector/ViewInjector$View$Element;

    const-string v1, "MMAWAKEN12"

    const-string v2, "tencent.mm.ui.base.MMPullDownView.dispatchTouchEvent"

    const/4 v7, 0x2

    const/16 v8, 0xc

    invoke-direct {v0, v1, v7, v8, v2}, Lcom/oneplus/injector/ViewInjector$View$Element;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/oneplus/injector/ViewInjector$View$Element;->MMAWAKEN12:Lcom/oneplus/injector/ViewInjector$View$Element;

    new-instance v0, Lcom/oneplus/injector/ViewInjector$View$Element;

    const-string v1, "MMAWAKEN14"

    const-string v2, "tencent.mm.ui.base.MMPullDownView.dispatchTouchEvent"

    const/4 v9, 0x3

    const/16 v10, 0xe

    invoke-direct {v0, v1, v9, v10, v2}, Lcom/oneplus/injector/ViewInjector$View$Element;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/oneplus/injector/ViewInjector$View$Element;->MMAWAKEN14:Lcom/oneplus/injector/ViewInjector$View$Element;

    new-instance v0, Lcom/oneplus/injector/ViewInjector$View$Element;

    const-string v1, "MMAWAKEN15"

    const-string v2, "tencent.mm.ui.base.MMPullDownView.dispatchTouchEvent"

    const/4 v11, 0x4

    const/16 v12, 0xf

    invoke-direct {v0, v1, v11, v12, v2}, Lcom/oneplus/injector/ViewInjector$View$Element;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/oneplus/injector/ViewInjector$View$Element;->MMAWAKEN15:Lcom/oneplus/injector/ViewInjector$View$Element;

    new-instance v0, Lcom/oneplus/injector/ViewInjector$View$Element;

    const-string v1, "OVERSCROLL"

    const-string v2, "AbsListView.onOverScrolled"

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/oneplus/injector/ViewInjector$View$Element;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/oneplus/injector/ViewInjector$View$Element;->OVERSCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

    new-instance v0, Lcom/oneplus/injector/ViewInjector$View$Element;

    const-string v1, "CONTENTSCROLL"

    const-string v2, "ContentView.onScrollChanged"

    const/4 v13, 0x6

    invoke-direct {v0, v1, v13, v11, v2}, Lcom/oneplus/injector/ViewInjector$View$Element;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/oneplus/injector/ViewInjector$View$Element;->CONTENTSCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

    new-instance v0, Lcom/oneplus/injector/ViewInjector$View$Element;

    const-string v1, "MMCHANGE9"

    const-string v2, "tencent.mm.ui.base.MMPullDownView.dispatchTouchEvent"

    const/16 v14, 0x9

    invoke-direct {v0, v1, v6, v14, v2}, Lcom/oneplus/injector/ViewInjector$View$Element;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/oneplus/injector/ViewInjector$View$Element;->MMCHANGE9:Lcom/oneplus/injector/ViewInjector$View$Element;

    new-instance v0, Lcom/oneplus/injector/ViewInjector$View$Element;

    const-string v1, "MMCHANGE12"

    const-string v2, "tencent.mm.ui.base.MMPullDownView.dispatchTouchEvent"

    const/16 v15, 0x8

    invoke-direct {v0, v1, v15, v8, v2}, Lcom/oneplus/injector/ViewInjector$View$Element;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/oneplus/injector/ViewInjector$View$Element;->MMCHANGE12:Lcom/oneplus/injector/ViewInjector$View$Element;

    new-instance v0, Lcom/oneplus/injector/ViewInjector$View$Element;

    const-string v1, "MMCHANGE14"

    const-string v2, "tencent.mm.ui.base.MMPullDownView.dispatchTouchEvent"

    invoke-direct {v0, v1, v14, v10, v2}, Lcom/oneplus/injector/ViewInjector$View$Element;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/oneplus/injector/ViewInjector$View$Element;->MMCHANGE14:Lcom/oneplus/injector/ViewInjector$View$Element;

    new-instance v0, Lcom/oneplus/injector/ViewInjector$View$Element;

    const-string v1, "MMCHANGE15"

    const-string v2, "tencent.mm.ui.base.MMPullDownView.dispatchTouchEvent"

    const/16 v14, 0xa

    invoke-direct {v0, v1, v14, v12, v2}, Lcom/oneplus/injector/ViewInjector$View$Element;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/oneplus/injector/ViewInjector$View$Element;->MMCHANGE15:Lcom/oneplus/injector/ViewInjector$View$Element;

    new-instance v0, Lcom/oneplus/injector/ViewInjector$View$Element;

    const-string v1, "BROWSERSCROLL"

    const-string v2, "oppo.browser.navigation.widget.NavigationView.dispatchTouchEvent"

    const/16 v14, 0xb

    invoke-direct {v0, v1, v14, v10, v2}, Lcom/oneplus/injector/ViewInjector$View$Element;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/oneplus/injector/ViewInjector$View$Element;->BROWSERSCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

    new-instance v0, Lcom/oneplus/injector/ViewInjector$View$Element;

    const-string v1, "QZONESCROLL"

    const-string v2, "qzone.widget.QZonePullToRefreshListView.onScrollChanged"

    invoke-direct {v0, v1, v8, v15, v2}, Lcom/oneplus/injector/ViewInjector$View$Element;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/oneplus/injector/ViewInjector$View$Element;->QZONESCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

    new-instance v0, Lcom/oneplus/injector/ViewInjector$View$Element;

    const-string v1, "WEBSCROLL"

    const-string v2, "WebView$PrivateAccess.overScrollBy"

    const/16 v8, 0x10

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15, v8, v2}, Lcom/oneplus/injector/ViewInjector$View$Element;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/oneplus/injector/ViewInjector$View$Element;->WEBSCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

    new-instance v0, Lcom/oneplus/injector/ViewInjector$View$Element;

    const-string v1, "LISTOVERSCROLL"

    const-string v2, "AbsListView.onTouchEvent"

    invoke-direct {v0, v1, v10, v13, v2}, Lcom/oneplus/injector/ViewInjector$View$Element;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/oneplus/injector/ViewInjector$View$Element;->LISTOVERSCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

    new-instance v0, Lcom/oneplus/injector/ViewInjector$View$Element;

    const-string v1, "WEBOVERSCROLL"

    const-string v2, "WebView$PrivateAccess.overScrollBy"

    invoke-direct {v0, v1, v12, v4, v2}, Lcom/oneplus/injector/ViewInjector$View$Element;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/oneplus/injector/ViewInjector$View$Element;->WEBOVERSCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

    new-instance v0, Lcom/oneplus/injector/ViewInjector$View$Element;

    const-string v1, "BROWSEROVERSCROLL"

    const-string v2, "oppo.browser.navigation.widget.NavigationView.dispatchTouchEvent"

    invoke-direct {v0, v1, v8, v14, v2}, Lcom/oneplus/injector/ViewInjector$View$Element;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/oneplus/injector/ViewInjector$View$Element;->BROWSEROVERSCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

    const/16 v0, 0x11

    new-array v0, v0, [Lcom/oneplus/injector/ViewInjector$View$Element;

    sget-object v1, Lcom/oneplus/injector/ViewInjector$View$Element;->SCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/injector/ViewInjector$View$Element;->QQSCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oneplus/injector/ViewInjector$View$Element;->MMAWAKEN12:Lcom/oneplus/injector/ViewInjector$View$Element;

    aput-object v1, v0, v7

    sget-object v1, Lcom/oneplus/injector/ViewInjector$View$Element;->MMAWAKEN14:Lcom/oneplus/injector/ViewInjector$View$Element;

    aput-object v1, v0, v9

    sget-object v1, Lcom/oneplus/injector/ViewInjector$View$Element;->MMAWAKEN15:Lcom/oneplus/injector/ViewInjector$View$Element;

    aput-object v1, v0, v11

    sget-object v1, Lcom/oneplus/injector/ViewInjector$View$Element;->OVERSCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oneplus/injector/ViewInjector$View$Element;->CONTENTSCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

    aput-object v1, v0, v13

    sget-object v1, Lcom/oneplus/injector/ViewInjector$View$Element;->MMCHANGE9:Lcom/oneplus/injector/ViewInjector$View$Element;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oneplus/injector/ViewInjector$View$Element;->MMCHANGE12:Lcom/oneplus/injector/ViewInjector$View$Element;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/injector/ViewInjector$View$Element;->MMCHANGE14:Lcom/oneplus/injector/ViewInjector$View$Element;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/injector/ViewInjector$View$Element;->MMCHANGE15:Lcom/oneplus/injector/ViewInjector$View$Element;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/injector/ViewInjector$View$Element;->BROWSERSCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

    aput-object v1, v0, v14

    sget-object v1, Lcom/oneplus/injector/ViewInjector$View$Element;->QZONESCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/injector/ViewInjector$View$Element;->WEBSCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/injector/ViewInjector$View$Element;->LISTOVERSCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

    aput-object v1, v0, v10

    sget-object v1, Lcom/oneplus/injector/ViewInjector$View$Element;->WEBOVERSCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

    aput-object v1, v0, v12

    sget-object v1, Lcom/oneplus/injector/ViewInjector$View$Element;->BROWSEROVERSCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

    aput-object v1, v0, v8

    sput-object v0, Lcom/oneplus/injector/ViewInjector$View$Element;->$VALUES:[Lcom/oneplus/injector/ViewInjector$View$Element;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oneplus/injector/ViewInjector$View$Element;->mName:Ljava/lang/String;

    const/4 p1, -0x1

    iput p1, p0, Lcom/oneplus/injector/ViewInjector$View$Element;->mPosition:I

    iput p3, p0, Lcom/oneplus/injector/ViewInjector$View$Element;->mPosition:I

    iput-object p4, p0, Lcom/oneplus/injector/ViewInjector$View$Element;->mName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/injector/ViewInjector$View$Element;
    .locals 1

    const-class v0, Lcom/oneplus/injector/ViewInjector$View$Element;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/injector/ViewInjector$View$Element;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/injector/ViewInjector$View$Element;
    .locals 1

    sget-object v0, Lcom/oneplus/injector/ViewInjector$View$Element;->$VALUES:[Lcom/oneplus/injector/ViewInjector$View$Element;

    invoke-virtual {v0}, [Lcom/oneplus/injector/ViewInjector$View$Element;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/injector/ViewInjector$View$Element;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/injector/ViewInjector$View$Element;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNameString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oneplus/injector/ViewInjector$View$Element;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    iget v0, p0, Lcom/oneplus/injector/ViewInjector$View$Element;->mPosition:I

    return v0
.end method
