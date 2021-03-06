package learnings.dao;

import java.util.Date;
import java.util.List;

import learnings.model.Seance;

public interface SeanceDao {
	public List<Seance> listerSeances();

	public List<Seance> listerSeancesNotees();

	public List<Seance> listerTPNotesParDateRendu(Date date);

	public Seance getSeance(Long idSeance);

	public Seance ajouterSeance(Seance seance);

	public void modifierSeance(Seance seance);
}
