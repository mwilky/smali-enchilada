.class public final synthetic Landroid/view/accessibility/-$$Lambda$AccessibilityEvent$gjyLj65KEDUo5PJZiVYxPrd2Vug;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntFunction;


# static fields
.field public static final synthetic INSTANCE:Landroid/view/accessibility/-$$Lambda$AccessibilityEvent$gjyLj65KEDUo5PJZiVYxPrd2Vug;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/accessibility/-$$Lambda$AccessibilityEvent$gjyLj65KEDUo5PJZiVYxPrd2Vug;

    invoke-direct {v0}, Landroid/view/accessibility/-$$Lambda$AccessibilityEvent$gjyLj65KEDUo5PJZiVYxPrd2Vug;-><init>()V

    sput-object v0, Landroid/view/accessibility/-$$Lambda$AccessibilityEvent$gjyLj65KEDUo5PJZiVYxPrd2Vug;->INSTANCE:Landroid/view/accessibility/-$$Lambda$AccessibilityEvent$gjyLj65KEDUo5PJZiVYxPrd2Vug;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->lambda$gjyLj65KEDUo5PJZiVYxPrd2Vug(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
