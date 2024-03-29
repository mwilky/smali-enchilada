.class public Lcom/oneplus/screenshot/anim/TargetAnimator;
.super Landroid/animation/ValueAnimator;
.source "TargetAnimator.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/screenshot/anim/TargetAnimator$PropSetter;,
        Lcom/oneplus/screenshot/anim/TargetAnimator$OnAnimUpdate;,
        Lcom/oneplus/screenshot/anim/TargetAnimator$OnAnimRun;,
        Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;,
        Lcom/oneplus/screenshot/anim/TargetAnimator$Runner;,
        Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field protected mLoader:Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;

.field private mSetAnimators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Lcom/oneplus/screenshot/anim/TargetAnimator$PropSetter;",
            ">;"
        }
    .end annotation
.end field

.field private mSetEnds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Lcom/oneplus/screenshot/anim/TargetAnimator$PropSetter;",
            ">;"
        }
    .end annotation
.end field

.field private mSetStarts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Lcom/oneplus/screenshot/anim/TargetAnimator$PropSetter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    const-string v0, "TargetAnimator"

    iput-object v0, p0, Lcom/oneplus/screenshot/anim/TargetAnimator;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/anim/TargetAnimator;->mLoader:Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/screenshot/anim/TargetAnimator;->mSetAnimators:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/screenshot/anim/TargetAnimator;->mSetStarts:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/screenshot/anim/TargetAnimator;->mSetEnds:Ljava/util/Map;

    invoke-virtual {p0, p0}, Lcom/oneplus/screenshot/anim/TargetAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0, p0}, Lcom/oneplus/screenshot/anim/TargetAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/screenshot/anim/TargetAnimator;Landroid/view/View;Ljava/lang/reflect/Method;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/screenshot/anim/TargetAnimator;->invoke(Landroid/view/View;Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    return-void
.end method

.method private addSetters(Landroid/view/View;Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;Ljava/lang/Class;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Lcom/oneplus/screenshot/anim/TargetAnimator$PropSetter;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/oneplus/screenshot/anim/TargetAnimator$PropSetter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oneplus/screenshot/anim/TargetAnimator$PropSetter;-><init>(Lcom/oneplus/screenshot/anim/TargetAnimator;Lcom/oneplus/screenshot/anim/TargetAnimator$1;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2}, Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    :try_start_0
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/oneplus/screenshot/anim/TargetAnimator;->getSetterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object p3, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/oneplus/screenshot/anim/TargetAnimator$PropSetter;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_1
    nop

    :goto_2
    goto :goto_0

    :cond_0
    invoke-interface {p4, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private getSetterName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private invoke(Landroid/view/View;Ljava/lang/reflect/Method;Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-virtual {p2, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :goto_0
    nop

    :goto_1
    return-void
.end method

.method private invokeSetters(Lcom/oneplus/screenshot/anim/TargetAnimator$Runner;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/screenshot/anim/TargetAnimator$Runner;",
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Lcom/oneplus/screenshot/anim/TargetAnimator$PropSetter;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/screenshot/anim/TargetAnimator$PropSetter;

    invoke-virtual {v3}, Lcom/oneplus/screenshot/anim/TargetAnimator$PropSetter;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {p1, v2, v5}, Lcom/oneplus/screenshot/anim/TargetAnimator$Runner;->run(Landroid/view/View;Ljava/util/Map$Entry;)V

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public addPropAnimator(Landroid/view/View;Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;)V
    .locals 2

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    iget-object v1, p0, Lcom/oneplus/screenshot/anim/TargetAnimator;->mSetAnimators:Ljava/util/Map;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/oneplus/screenshot/anim/TargetAnimator;->addSetters(Landroid/view/View;Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public addPropEnd(Landroid/view/View;Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;)V
    .locals 2

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iget-object v1, p0, Lcom/oneplus/screenshot/anim/TargetAnimator;->mSetEnds:Ljava/util/Map;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/oneplus/screenshot/anim/TargetAnimator;->addSetters(Landroid/view/View;Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public addPropStart(Landroid/view/View;Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;)V
    .locals 2

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iget-object v1, p0, Lcom/oneplus/screenshot/anim/TargetAnimator;->mSetStarts:Ljava/util/Map;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/oneplus/screenshot/anim/TargetAnimator;->addSetters(Landroid/view/View;Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public getLoader()Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/screenshot/anim/TargetAnimator;->mLoader:Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;

    return-object v0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    new-instance v0, Lcom/oneplus/screenshot/anim/TargetAnimator$OnAnimRun;

    const-string v1, "End"

    invoke-direct {v0, p0, v1}, Lcom/oneplus/screenshot/anim/TargetAnimator$OnAnimRun;-><init>(Lcom/oneplus/screenshot/anim/TargetAnimator;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oneplus/screenshot/anim/TargetAnimator;->mSetEnds:Ljava/util/Map;

    invoke-direct {p0, v0, v1}, Lcom/oneplus/screenshot/anim/TargetAnimator;->invokeSetters(Lcom/oneplus/screenshot/anim/TargetAnimator$Runner;Ljava/util/Map;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    new-instance v0, Lcom/oneplus/screenshot/anim/TargetAnimator$OnAnimRun;

    const-string v1, "Start"

    invoke-direct {v0, p0, v1}, Lcom/oneplus/screenshot/anim/TargetAnimator$OnAnimRun;-><init>(Lcom/oneplus/screenshot/anim/TargetAnimator;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oneplus/screenshot/anim/TargetAnimator;->mSetStarts:Ljava/util/Map;

    invoke-direct {p0, v0, v1}, Lcom/oneplus/screenshot/anim/TargetAnimator;->invokeSetters(Lcom/oneplus/screenshot/anim/TargetAnimator$Runner;Ljava/util/Map;)V

    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    new-instance v1, Lcom/oneplus/screenshot/anim/TargetAnimator$OnAnimUpdate;

    invoke-direct {v1, p0, v0}, Lcom/oneplus/screenshot/anim/TargetAnimator$OnAnimUpdate;-><init>(Lcom/oneplus/screenshot/anim/TargetAnimator;F)V

    iget-object v2, p0, Lcom/oneplus/screenshot/anim/TargetAnimator;->mSetAnimators:Ljava/util/Map;

    invoke-direct {p0, v1, v2}, Lcom/oneplus/screenshot/anim/TargetAnimator;->invokeSetters(Lcom/oneplus/screenshot/anim/TargetAnimator$Runner;Ljava/util/Map;)V

    return-void
.end method

.method public setLoader(Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/screenshot/anim/TargetAnimator;->mLoader:Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;

    return-void
.end method
