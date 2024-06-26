<form action="{{ url('companies/save') }}" role="form" method="post">
    <ul class="pager">
        <li class="previous pull-left">
            {{ tag.a(url('companies'), '&larr; Go Back', [], true) }}
        </li>
        <li class="pull-right">
            {{ tag.inputSubmit('Save', 'Save', ['class': 'btn btn-success']) }}
        </li>
    </ul>

    <h2>Edit companies</h2>

    <fieldset>
        {% for element in form %}
            {% if is_a(element, 'Phalcon\Forms\Element\Hidden') %}
                {{ element }}
            {% else %}
                <div class="form-group">
                    {{ element.label(['class': 'control-label']) }}
                    <div class="controls">
                        {{ element }}
                    </div>
                </div>
            {% endif %}
        {% endfor %}
    </fieldset>
</form>
