.class final Lcom/nineoldandroids/animation/B;
.super Lcom/nineoldandroids/animation/PropertyValuesHolder;


# instance fields
.field private e:Lcom/nineoldandroids/util/IntProperty;

.field private f:Lcom/nineoldandroids/animation/g;

.field private g:I


# direct methods
.method public constructor <init>(Lcom/nineoldandroids/util/Property;Lcom/nineoldandroids/animation/g;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nineoldandroids/animation/PropertyValuesHolder;-><init>(Lcom/nineoldandroids/util/Property;B)V

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Lcom/nineoldandroids/animation/B;->b:Ljava/lang/Class;

    iput-object p2, p0, Lcom/nineoldandroids/animation/B;->c:Lcom/nineoldandroids/animation/k;

    iget-object v0, p0, Lcom/nineoldandroids/animation/B;->c:Lcom/nineoldandroids/animation/k;

    check-cast v0, Lcom/nineoldandroids/animation/g;

    iput-object v0, p0, Lcom/nineoldandroids/animation/B;->f:Lcom/nineoldandroids/animation/g;

    instance-of v0, p1, Lcom/nineoldandroids/util/IntProperty;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nineoldandroids/animation/B;->mProperty:Lcom/nineoldandroids/util/Property;

    check-cast v0, Lcom/nineoldandroids/util/IntProperty;

    iput-object v0, p0, Lcom/nineoldandroids/animation/B;->e:Lcom/nineoldandroids/util/IntProperty;

    :cond_0
    return-void
.end method

.method public varargs constructor <init>(Lcom/nineoldandroids/util/Property;[I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nineoldandroids/animation/PropertyValuesHolder;-><init>(Lcom/nineoldandroids/util/Property;B)V

    invoke-virtual {p0, p2}, Lcom/nineoldandroids/animation/B;->setIntValues([I)V

    instance-of v0, p1, Lcom/nineoldandroids/util/IntProperty;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nineoldandroids/animation/B;->mProperty:Lcom/nineoldandroids/util/Property;

    check-cast v0, Lcom/nineoldandroids/util/IntProperty;

    iput-object v0, p0, Lcom/nineoldandroids/animation/B;->e:Lcom/nineoldandroids/util/IntProperty;

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/nineoldandroids/animation/g;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nineoldandroids/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;B)V

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Lcom/nineoldandroids/animation/B;->b:Ljava/lang/Class;

    iput-object p2, p0, Lcom/nineoldandroids/animation/B;->c:Lcom/nineoldandroids/animation/k;

    iget-object v0, p0, Lcom/nineoldandroids/animation/B;->c:Lcom/nineoldandroids/animation/k;

    check-cast v0, Lcom/nineoldandroids/animation/g;

    iput-object v0, p0, Lcom/nineoldandroids/animation/B;->f:Lcom/nineoldandroids/animation/g;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nineoldandroids/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;B)V

    invoke-virtual {p0, p2}, Lcom/nineoldandroids/animation/B;->setIntValues([I)V

    return-void
.end method

.method private c()Lcom/nineoldandroids/animation/B;
    .locals 2

    invoke-super {p0}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->clone()Lcom/nineoldandroids/animation/PropertyValuesHolder;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/animation/B;

    iget-object v1, v0, Lcom/nineoldandroids/animation/B;->c:Lcom/nineoldandroids/animation/k;

    check-cast v1, Lcom/nineoldandroids/animation/g;

    iput-object v1, v0, Lcom/nineoldandroids/animation/B;->f:Lcom/nineoldandroids/animation/g;

    return-object v0
.end method


# virtual methods
.method final a(F)V
    .locals 1

    iget-object v0, p0, Lcom/nineoldandroids/animation/B;->f:Lcom/nineoldandroids/animation/g;

    invoke-virtual {v0, p1}, Lcom/nineoldandroids/animation/g;->b(F)I

    move-result v0

    iput v0, p0, Lcom/nineoldandroids/animation/B;->g:I

    return-void
.end method

.method final a(Ljava/lang/Class;)V
    .locals 1

    iget-object v0, p0, Lcom/nineoldandroids/animation/B;->mProperty:Lcom/nineoldandroids/util/Property;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->a(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method final b()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/nineoldandroids/animation/B;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/nineoldandroids/animation/PropertyValuesHolder;
    .locals 2

    invoke-super {p0}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->clone()Lcom/nineoldandroids/animation/PropertyValuesHolder;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/animation/B;

    iget-object v1, v0, Lcom/nineoldandroids/animation/B;->c:Lcom/nineoldandroids/animation/k;

    check-cast v1, Lcom/nineoldandroids/animation/g;

    iput-object v1, v0, Lcom/nineoldandroids/animation/B;->f:Lcom/nineoldandroids/animation/g;

    return-object v0
.end method

.method final d(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/nineoldandroids/animation/B;->e:Lcom/nineoldandroids/util/IntProperty;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nineoldandroids/animation/B;->e:Lcom/nineoldandroids/util/IntProperty;

    iget v1, p0, Lcom/nineoldandroids/animation/B;->g:I

    invoke-virtual {v0, p1, v1}, Lcom/nineoldandroids/util/IntProperty;->setValue(Ljava/lang/Object;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nineoldandroids/animation/B;->mProperty:Lcom/nineoldandroids/util/Property;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nineoldandroids/animation/B;->mProperty:Lcom/nineoldandroids/util/Property;

    iget v1, p0, Lcom/nineoldandroids/animation/B;->g:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/nineoldandroids/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nineoldandroids/animation/B;->a:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/nineoldandroids/animation/B;->d:[Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/nineoldandroids/animation/B;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/nineoldandroids/animation/B;->a:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/nineoldandroids/animation/B;->d:[Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "PropertyValuesHolder"

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "PropertyValuesHolder"

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final varargs setIntValues([I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->setIntValues([I)V

    iget-object v0, p0, Lcom/nineoldandroids/animation/B;->c:Lcom/nineoldandroids/animation/k;

    check-cast v0, Lcom/nineoldandroids/animation/g;

    iput-object v0, p0, Lcom/nineoldandroids/animation/B;->f:Lcom/nineoldandroids/animation/g;

    return-void
.end method